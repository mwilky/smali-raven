.class Lcom/android/server/wm/RootWindowContainer$FindTaskResult;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/server/wm/Task;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private cls:Landroid/content/ComponentName;

.field private documentData:Landroid/net/Uri;

.field private isDocument:Z

.field private mActivityType:I

.field mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

.field mIdealRecord:Lcom/android/server/wm/ActivityRecord;

.field private mInfo:Landroid/content/pm/ActivityInfo;

.field private mIntent:Landroid/content/Intent;

.field private mTaskAffinity:Ljava/lang/String;

.field private userId:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 7

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x163d3536

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v4

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x318592b

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v4

    :cond_3
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v5, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    if-eq v0, v5, :cond_5

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x17cd80ad

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-object v4

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->matchingCandidate(Lcom/android/server/wm/TaskFragment;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTaskFragment()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->apply(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method init(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 1

    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method matchingCandidate(Lcom/android/server/wm/TaskFragment;)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_11

    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_11

    iget v7, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    if-ne v7, v8, :cond_11

    iget v7, v3, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v7

    iget v9, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    invoke-static {v7, v9}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    move-result v7

    if-nez v7, :cond_3

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x3cecb894

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v7, v8, v2, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v2

    :cond_3
    iget-object v7, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/content/Intent;->isDocument()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    goto :goto_0

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/content/Intent;->isDocument()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    sget-boolean v12, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v12, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_6

    iget-object v15, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_6
    const-string v15, ""

    :goto_1
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v12, v8, v2

    aput-object v13, v8, v5

    aput-object v14, v8, v4

    const/16 v16, 0x3

    aput-object v15, v8, v16

    const/4 v4, 0x0

    const v5, 0x4712c918

    invoke-static {v6, v5, v2, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const v5, 0x5cd91d99

    const v6, 0x741b271a

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v4, v8}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    invoke-static {v4, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x0

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v4, v6, v2, v8, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v2

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const/4 v14, 0x0

    invoke-static {v8, v5, v2, v14, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    const/4 v13, 0x1

    :goto_2
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return v13

    :cond_a
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v4, v8}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    invoke-static {v4, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x0

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v4, v6, v2, v8, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v2

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const/4 v14, 0x0

    invoke-static {v8, v5, v2, v14, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    const/4 v13, 0x1

    :goto_3
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return v13

    :cond_d
    iget-boolean v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->isDocument:Z

    if-nez v4, :cond_f

    if-nez v10, :cond_f

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_f

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_f

    iget-object v4, v1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_f

    iget-object v4, v1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_e

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x7989881f

    const/4 v6, 0x0

    move-object v8, v6

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v2, v6, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_4

    :cond_f
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_10

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x2e31a2c5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    const/4 v12, 0x0

    invoke-static {v5, v6, v2, v12, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_4
    return v2

    :cond_11
    :goto_5
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x5def8135

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x0

    invoke-static {v6, v7, v2, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    return v2
.end method

.method process(Lcom/android/server/wm/WindowContainer;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    move-result v0

    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->isDocument:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x30904169

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v4, v7, v1

    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Function;)Z

    return-void
.end method

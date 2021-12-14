.class final Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;
.super Ljava/lang/Object;
.source "PrivacyDialogController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyDialogController;->showDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDialogController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDialogController.kt\ncom/android/systemui/privacy/PrivacyDialogController$showDialog$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,285:1\n1571#2,9:286\n1819#2:295\n256#2,2:296\n1820#2:299\n1580#2:300\n1#3:298\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyDialogController.kt\ncom/android/systemui/privacy/PrivacyDialogController$showDialog$1\n*L\n162#1,9:286\n162#1:295\n164#1,2:296\n162#1:299\n162#1:300\n162#1:298\n*E\n"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-static {v1}, Lcom/android/systemui/privacy/PrivacyDialogController;->access$permGroupUsage(Lcom/android/systemui/privacy/PrivacyDialogController;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-static {v2}, Lcom/android/systemui/privacy/PrivacyDialogController;->access$getUserTracker$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/settings/UserTracker;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/settings/UserTracker;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-static {v3}, Lcom/android/systemui/privacy/PrivacyDialogController;->access$getPrivacyLogger$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/privacy/logging/PrivacyLogger;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUnfilteredPermGroupUsage(Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/permission/PermGroupUsage;

    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->getPermGroupName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.permGroupName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lcom/android/systemui/privacy/PrivacyDialogController;->access$permGroupToPrivacyType(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/lang/String;)Lcom/android/systemui/privacy/PrivacyType;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/systemui/privacy/PrivacyDialogController;->access$filterType(Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/privacy/PrivacyType;)Lcom/android/systemui/privacy/PrivacyType;

    move-result-object v8

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->getUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    move v11, v9

    :goto_1
    if-eqz v11, :cond_1

    goto :goto_2

    :cond_3
    move-object v7, v10

    :goto_2
    check-cast v7, Landroid/content/pm/UserInfo;

    if-nez v7, :cond_4

    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->isPhoneCall()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    if-nez v8, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->isPhoneCall()Z

    move-result v6

    const-string v10, "it.packageName"

    if-eqz v6, :cond_6

    const-string v6, ""

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->getUid()I

    move-result v11

    invoke-static {v3, v6, v11}, Lcom/android/systemui/privacy/PrivacyDialogController;->access$getLabelForPackage(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_3
    move-object v11, v6

    new-instance v6, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->getAttribution()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->getLastAccess()J

    move-result-wide v14

    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->isActive()Z

    move-result v16

    if-nez v7, :cond_7

    move/from16 v17, v9

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    move/from16 v17, v7

    :goto_4
    invoke-virtual {v5}, Landroid/permission/PermGroupUsage;->isPhoneCall()Z

    move-result v5

    move-object v7, v6

    move-object v9, v12

    move-object v12, v13

    move-wide v13, v14

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v5

    invoke-direct/range {v7 .. v17}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;-><init>(Lcom/android/systemui/privacy/PrivacyType;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JZZZ)V

    move-object v10, v6

    :cond_8
    :goto_5
    if-eqz v10, :cond_0

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-static {v1}, Lcom/android/systemui/privacy/PrivacyDialogController;->access$getUiExecutor$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;

    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/util/List;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

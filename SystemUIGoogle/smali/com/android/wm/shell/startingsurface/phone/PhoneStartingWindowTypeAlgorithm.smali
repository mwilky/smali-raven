.class public final Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;
.super Ljava/lang/Object;
.source "PhoneStartingWindowTypeAlgorithm.java"

# interfaces
.implements Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSuggestedWindowType(Landroid/window/StartingWindowInfo;)I
    .locals 19

    move-object/from16 v0, p1

    iget v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    move v8, v4

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    move v9, v4

    goto :goto_5

    :cond_5
    move v9, v3

    :goto_5
    const/high16 v10, -0x80000000

    and-int/2addr v10, v1

    if-eqz v10, :cond_6

    move v10, v4

    goto :goto_6

    :cond_6
    move v10, v3

    :goto_6
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_7

    :cond_7
    move v1, v3

    :goto_7
    iget-object v11, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    move v11, v4

    goto :goto_8

    :cond_8
    move v11, v3

    :goto_8
    sget-boolean v13, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    const/4 v14, 0x3

    if-eqz v13, :cond_9

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v12

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v14

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v15, v17

    const/16 v16, 0x5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v15, v16

    const/16 v16, 0x6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v15, v16

    const/16 v16, 0x7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v15, v16

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v18, 0x8

    aput-object v16, v15, v18

    const v4, 0x3ffff

    const v3, 0x11dc508d

    const/4 v14, 0x0

    invoke-static {v13, v3, v4, v14, v15}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_9
    const/16 v17, 0x4

    :goto_9
    if-nez v11, :cond_d

    if-eqz v6, :cond_a

    if-nez v2, :cond_a

    if-eqz v5, :cond_d

    if-nez v8, :cond_d

    :cond_a
    if-eqz v9, :cond_b

    const/4 v4, 0x3

    goto :goto_a

    :cond_b
    if-eqz v10, :cond_c

    move/from16 v4, v17

    goto :goto_a

    :cond_c
    const/4 v4, 0x1

    :goto_a
    return v4

    :cond_d
    if-eqz v5, :cond_12

    if-eqz v7, :cond_f

    iget-object v0, v0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    if-eqz v0, :cond_e

    return v12

    :cond_e
    if-nez v11, :cond_f

    const/4 v0, 0x3

    return v0

    :cond_f
    const/4 v0, 0x3

    if-nez v1, :cond_12

    if-nez v11, :cond_12

    if-eqz v9, :cond_10

    move v4, v0

    goto :goto_b

    :cond_10
    if-eqz v10, :cond_11

    move/from16 v4, v17

    goto :goto_b

    :cond_11
    const/4 v4, 0x1

    :goto_b
    return v4

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

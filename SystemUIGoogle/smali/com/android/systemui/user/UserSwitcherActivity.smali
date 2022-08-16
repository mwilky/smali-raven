.class public final Lcom/android/systemui/user/UserSwitcherActivity;
.super Lcom/android/systemui/util/LifecycleActivity;
.source "UserSwitcherActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserSwitcherActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserSwitcherActivity.kt\ncom/android/systemui/user/UserSwitcherActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,390:1\n1849#2,2:391\n*S KotlinDebug\n*F\n+ 1 UserSwitcherActivity.kt\ncom/android/systemui/user/UserSwitcherActivity\n*L\n228#1:391,2\n*E\n"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final adapter:Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;

.field public addButton:Landroid/view/View;

.field public addUserRecords:Ljava/util/ArrayList;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public broadcastReceiver:Lcom/android/systemui/user/UserSwitcherActivity$initBroadcastReceiver$1;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final manageUserRecord:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

.field public parent:Landroid/view/ViewGroup;

.field public final userManager:Landroid/os/UserManager;

.field public final userSwitchedCallback:Lcom/android/systemui/user/UserSwitcherActivity$userSwitchedCallback$1;

.field public final userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/view/LayoutInflater;Lcom/android/systemui/plugins/FalsingManager;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;)V
    .locals 9

    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/user/UserSwitcherActivity;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/systemui/user/UserSwitcherActivity;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p5, p0, Lcom/android/systemui/user/UserSwitcherActivity;->userManager:Landroid/os/UserManager;

    iput-object p6, p0, Lcom/android/systemui/user/UserSwitcherActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity;->addUserRecords:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/systemui/user/UserSwitcherActivity$userSwitchedCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/user/UserSwitcherActivity$userSwitchedCallback$1;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;)V

    iput-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity;->userSwitchedCallback:Lcom/android/systemui/user/UserSwitcherActivity$userSwitchedCallback$1;

    new-instance p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZ)V

    iput-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity;->manageUserRecord:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    new-instance p2, Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity;->adapter:Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;

    return-void
.end method

.method public static final access$buildUserViews(Lcom/android/systemui/user/UserSwitcherActivity;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v0, :cond_4

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lcom/android/systemui/user/UserSwitcherActivity;->parent:Landroid/view/ViewGroup;

    if-nez v7, :cond_1

    move-object v7, v1

    :cond_1
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "user_view"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    :cond_3
    move v3, v6

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->parent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    invoke-virtual {v0, v5, v4}, Landroid/view/ViewGroup;->removeViews(II)V

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->addUserRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, 0x7f0b02a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/helper/widget/Flow;

    iget-object v3, p0, Lcom/android/systemui/user/UserSwitcherActivity;->parent:Landroid/view/ViewGroup;

    if-nez v3, :cond_6

    move-object v3, v1

    :cond_6
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/user/UserSwitcherActivity;->adapter:Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_5

    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-nez v8, :cond_a

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddSupervisedUser:Z

    if-nez v8, :cond_a

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v8, :cond_9

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v7, :cond_9

    goto :goto_3

    :cond_9
    move v7, v2

    goto :goto_4

    :cond_a
    :goto_3
    move v7, v6

    :goto_4
    xor-int/2addr v7, v6

    if-eqz v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_b

    goto :goto_2

    :cond_b
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Count overflow has happened."

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    invoke-virtual {p0, v5}, Lcom/android/systemui/user/UserSwitcherActivity;->getMaxColumns(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f07087b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v7, v5

    sub-int/2addr v3, v7

    div-int/2addr v3, v4

    iget-object v5, v0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/solver/widgets/Flow;

    iput v4, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v4, p0, Lcom/android/systemui/user/UserSwitcherActivity;->adapter:Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getCount()I

    move-result v4

    move v5, v2

    :goto_6
    if-ge v5, v4, :cond_13

    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Lcom/android/systemui/user/UserSwitcherActivity;->adapter:Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/user/UserSwitcherActivity;->adapter:Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-nez v9, :cond_e

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddSupervisedUser:Z

    if-nez v9, :cond_e

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v9, :cond_d

    iget-object v9, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v9, :cond_d

    goto :goto_7

    :cond_d
    move v9, v2

    goto :goto_8

    :cond_e
    :goto_7
    move v9, v6

    :goto_8
    if-eqz v9, :cond_f

    iget-object v5, p0, Lcom/android/systemui/user/UserSwitcherActivity;->addUserRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    iget-object v9, p0, Lcom/android/systemui/user/UserSwitcherActivity;->adapter:Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;

    iget-object v10, p0, Lcom/android/systemui/user/UserSwitcherActivity;->parent:Landroid/view/ViewGroup;

    if-nez v10, :cond_10

    move-object v10, v1

    :cond_10
    invoke-virtual {v9, v5, v1, v10}, Lcom/android/systemui/user/UserSwitcherActivity$adapter$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v9, 0x7f0b073f

    invoke-virtual {v5, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ge v3, v11, :cond_11

    iput v3, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    iget-object v9, p0, Lcom/android/systemui/user/UserSwitcherActivity;->parent:Landroid/view/ViewGroup;

    if-nez v9, :cond_12

    move-object v9, v1

    :cond_12
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->addView(Landroid/view/View;)V

    new-instance v9, Lcom/android/systemui/user/UserSwitcherActivity$buildUserViews$2;

    invoke-direct {v9, p0, v8}, Lcom/android/systemui/user/UserSwitcherActivity$buildUserViews$2;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    move v5, v7

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->addUserRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->addUserRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/user/UserSwitcherActivity;->manageUserRecord:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->addButton:Landroid/view/View;

    if-nez p0, :cond_14

    goto :goto_a

    :cond_14
    move-object v1, p0

    :goto_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_15
    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->addButton:Landroid/view/View;

    if-nez p0, :cond_16

    goto :goto_b

    :cond_16
    move-object v1, p0

    :goto_b
    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    return-void
.end method


# virtual methods
.method public final getMaxColumns(I)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x5

    if-ge p1, p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    int-to-double p0, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    :goto_0
    return p0
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e02c3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x302

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0b0740

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->parent:Landroid/view/ViewGroup;

    const p1, 0x7f0b0159

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/user/UserSwitcherActivity$onCreate$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/user/UserSwitcherActivity$onCreate$1$1;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0084

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/user/UserSwitcherActivity$onCreate$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/user/UserSwitcherActivity$onCreate$2$1;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->addButton:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mView:Landroid/view/View;

    new-instance p1, Lcom/android/systemui/user/UserSwitcherActivity$initBroadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/user/UserSwitcherActivity$initBroadcastReceiver$1;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;)V

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->broadcastReceiver:Lcom/android/systemui/user/UserSwitcherActivity$initBroadcastReceiver$1;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/user/UserSwitcherActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->broadcastReceiver:Lcom/android/systemui/user/UserSwitcherActivity$initBroadcastReceiver$1;

    if-nez p1, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;II)V

    iget-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->parent:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    new-instance p1, Lcom/android/systemui/user/UserSwitcherActivity$onCreate$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/user/UserSwitcherActivity$onCreate$3;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->userSwitchedCallback:Lcom/android/systemui/user/UserSwitcherActivity$userSwitchedCallback$1;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/settings/UserTracker;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->broadcastReceiver:Lcom/android/systemui/user/UserSwitcherActivity$initBroadcastReceiver$1;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->userSwitchedCallback:Lcom/android/systemui/user/UserSwitcherActivity$userSwitchedCallback$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/UserTracker;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    return-void
.end method

.class public final Lcom/android/systemui/qs/user/UserSwitchDialogController;
.super Ljava/lang/Object;
.source "UserSwitchDialogController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/user/UserSwitchDialogController$Companion;,
        Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShowerImpl;,
        Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/qs/user/UserSwitchDialogController$Companion;

.field private static final USER_SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final dialogFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field private final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final userDetailViewAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/user/UserSwitchDialogController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/user/UserSwitchDialogController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->Companion:Lcom/android/systemui/qs/user/UserSwitchDialogController$Companion;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/animation/DialogLaunchAnimator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;",
            ">;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/animation/DialogLaunchAnimator;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "userDetailViewAdapterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogLaunchAnimator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/android/systemui/qs/user/UserSwitchDialogController$1;->INSTANCE:Lcom/android/systemui/qs/user/UserSwitchDialogController$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/user/UserSwitchDialogController;-><init>(Ljavax/inject/Provider;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/animation/DialogLaunchAnimator;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/animation/DialogLaunchAnimator;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;",
            ">;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/animation/DialogLaunchAnimator;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialog;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "userDetailViewAdapterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogLaunchAnimator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->userDetailViewAdapterProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p3, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p4, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    iput-object p5, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogFactory:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/qs/user/UserSwitchDialogController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getDialogLaunchAnimator$p(Lcom/android/systemui/qs/user/UserSwitchDialogController;)Lcom/android/systemui/animation/DialogLaunchAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    return-object p0
.end method

.method public static final synthetic access$getFalsingManager$p(Lcom/android/systemui/qs/user/UserSwitchDialogController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method public static final synthetic access$getUSER_SETTINGS_INTENT$cp()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final showDialog(Landroid/view/View;)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogFactory:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "view.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    sget v1, Lcom/android/systemui/R$string;->qs_user_switch_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    sget v1, Lcom/android/systemui/R$string;->quick_settings_done:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    sget v1, Lcom/android/systemui/R$string;->quick_settings_more_user_settings:I

    new-instance v3, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;-><init>(Lcom/android/systemui/qs/user/UserSwitchDialogController;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$layout;->qs_user_dialog_content:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->userDetailViewAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    sget v2, Lcom/android/systemui/R$id;->grid:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->linkToViewGroup(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/view/View;ZILjava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShowerImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShowerImpl;-><init>(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogLaunchAnimator;)V

    invoke-virtual {v7, p1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->injectDialogShower(Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    return-void
.end method

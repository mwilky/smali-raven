.class final Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$windowInsetsListener$1;
.super Ljava/lang/Object;
.source "NotificationsQSContainerController.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/WindowInsets;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$windowInsetsListener$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/view/WindowInsets;)V
    .locals 2

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$windowInsetsListener$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->access$setBottomStableInsets$p(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$windowInsetsListener$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->access$setBottomCutoutInsets$p(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$windowInsetsListener$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->access$updateBottomSpacing(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/WindowInsets;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$windowInsetsListener$1;->accept(Landroid/view/WindowInsets;)V

    return-void
.end method

.class public final Lcom/android/systemui/statusbar/phone/ShadeControllerImpl$1;
.super Ljava/lang/Object;
.source "ShadeControllerImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;

.field public final synthetic val$executable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;Lcom/android/systemui/wmshell/WMShell$7$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl$1;->val$executable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getCentralSurfaces()Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl$1;->val$executable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

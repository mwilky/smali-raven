.class public final Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;
.super Ljava/lang/Object;
.source "NotificationsQSContainerController.kt"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskbarStatusUpdated(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$taskbarVisibilityListener$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->access$setTaskbarVisible$p(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;Z)V

    return-void
.end method

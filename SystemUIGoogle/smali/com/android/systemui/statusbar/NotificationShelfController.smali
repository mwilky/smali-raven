.class public final Lcom/android/systemui/statusbar/NotificationShelfController;
.super Ljava/lang/Object;
.source "NotificationShelfController.java"


# instance fields
.field public final mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

.field public mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mOnAttachStateChangeListener:Lcom/android/systemui/statusbar/NotificationShelfController$1;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mView:Lcom/android/systemui/statusbar/NotificationShelf;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShelfController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShelfController$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelfController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mOnAttachStateChangeListener:Lcom/android/systemui/statusbar/NotificationShelfController$1;

    return-void
.end method

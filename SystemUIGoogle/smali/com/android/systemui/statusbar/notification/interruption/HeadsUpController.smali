.class public final Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;
.super Ljava/lang/Object;
.source "HeadsUpController.java"


# instance fields
.field public mCollectionListener:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

.field public final mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

.field public final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field public mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;

.field public final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mCollectionListener:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    return-void
.end method

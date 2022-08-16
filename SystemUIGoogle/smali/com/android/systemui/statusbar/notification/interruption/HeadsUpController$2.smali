.class public final Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;
.super Ljava/lang/Object;
.source "HeadsUpController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRemoved:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->unbindHeadsUpView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final onGutsClosed(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->$r8$lambda$fTu3m0D9L95sZSh--RvCr8dccwQ(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    return-void
.end method

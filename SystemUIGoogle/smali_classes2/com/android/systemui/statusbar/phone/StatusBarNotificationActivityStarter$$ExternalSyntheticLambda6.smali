.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda6;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda6;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->$r8$lambda$tm3xFARxoML_ZfmO5nksTmhtthY(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.class public final synthetic Lcom/android/settings/notification/history/NotificationStation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/history/NotificationStation$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/history/NotificationStation$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/notification/history/NotificationStation$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/notification/history/NotificationStation$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/notification/history/NotificationStation$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    check-cast p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    invoke-static {p1, p2}, Lcom/android/settings/notification/history/NotificationStation;->$r8$lambda$RKfDJcuHTH5qBoHKXxXByBlVTsY(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)I

    move-result p0

    return p0
.end method

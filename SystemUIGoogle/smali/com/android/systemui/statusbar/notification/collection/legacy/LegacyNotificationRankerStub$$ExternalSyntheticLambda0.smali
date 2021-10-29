.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationRankerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationRankerStub$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationRankerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationRankerStub$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationRankerStub$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationRankerStub$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationRankerStub;->$r8$lambda$0yICjo6Y8bmFpRmflos7WNAWHOI(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)J

    move-result-wide p0

    return-wide p0
.end method

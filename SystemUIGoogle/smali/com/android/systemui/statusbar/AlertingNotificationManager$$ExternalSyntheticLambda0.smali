.class public final synthetic Lcom/android/systemui/statusbar/AlertingNotificationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/AlertingNotificationManager$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/statusbar/AlertingNotificationManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->$r8$lambda$FWybKD5Tp-Akqi4lkOUArPc4S58(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method

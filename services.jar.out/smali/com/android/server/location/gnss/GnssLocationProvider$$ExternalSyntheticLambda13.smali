.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;-><init>()V

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

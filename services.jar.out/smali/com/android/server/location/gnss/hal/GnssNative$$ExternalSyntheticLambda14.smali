.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iput-wide p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;->f$1:J

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-wide v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNmea$4$GnssNative(J)V

    return-void
.end method

.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;ZLandroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iput-boolean p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$2:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:Z

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$2:Landroid/location/Location;

    invoke-static {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->$r8$lambda$EHU9n696rYIcAdExUbHk_BKRuY8(Lcom/android/server/location/gnss/hal/GnssNative;ZLandroid/location/Location;)V

    return-void
.end method

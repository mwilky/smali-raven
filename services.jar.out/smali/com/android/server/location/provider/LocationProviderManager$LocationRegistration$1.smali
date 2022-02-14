.class Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private mPreviousLocation:Landroid/location/Location;

.field final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public test(Landroid/location/Location;)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const v2, 0x3dcccccd    # 0.1f

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-long v2, v3

    const-wide/16 v4, 0x7530

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v0, v4

    const-string v5, " provider registration "

    const-string v6, "LocationManagerService"

    const/4 v7, 0x0

    if-gez v4, :cond_1

    sget-boolean v4, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v8, v8, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v8, v8, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v5}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " dropped delivery - too fast"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v7

    :cond_1
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v4

    float-to-double v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v4, v8, v10

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    invoke-virtual {p1, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v10, v4

    cmpg-double v4, v10, v8

    if-gtz v4, :cond_3

    sget-boolean v4, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v10, v10, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v10, v10, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v5}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " dropped delivery - too close"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v7

    :cond_3
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->test(Landroid/location/Location;)Z

    move-result p1

    return p1
.end method

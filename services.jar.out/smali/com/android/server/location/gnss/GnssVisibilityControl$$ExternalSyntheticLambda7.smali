.class public final synthetic Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda7;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda7;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$onGpsEnabledChanged$2$GnssVisibilityControl(Z)V

    return-void
.end method

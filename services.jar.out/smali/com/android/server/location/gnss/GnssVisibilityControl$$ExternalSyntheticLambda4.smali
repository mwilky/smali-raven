.class public final synthetic Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->$r8$lambda$qqvwD5ldiBo9TKitjS5NvPicUxw(Lcom/android/server/location/gnss/GnssVisibilityControl;Z)V

    return-void
.end method

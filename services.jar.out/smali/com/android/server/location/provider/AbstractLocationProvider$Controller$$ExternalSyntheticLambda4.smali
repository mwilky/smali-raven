.class public final synthetic Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/AbstractLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->onStop()V

    return-void
.end method

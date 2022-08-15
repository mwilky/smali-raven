.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    check-cast p1, Landroid/location/Location;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->$r8$lambda$57Uodug62B4zZHkjyoJplDAyqXc(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

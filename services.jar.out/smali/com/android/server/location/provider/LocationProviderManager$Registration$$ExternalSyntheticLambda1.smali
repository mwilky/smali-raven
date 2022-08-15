.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->$r8$lambda$_shPEktTFzsHWYBibeHBex3HXzQ(ILcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V

    return-void
.end method

.class public final synthetic Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Landroid/location/GnssNavigationMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/location/GnssNavigationMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;->f$0:Landroid/location/GnssNavigationMessage;

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;->f$0:Landroid/location/GnssNavigationMessage;

    check-cast p1, Landroid/location/IGnssNavigationMessageListener;

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->$r8$lambda$k0yT4rUGmE5kGkCi6MlYWyYYmTw(Landroid/location/GnssNavigationMessage;Landroid/location/IGnssNavigationMessageListener;)V

    return-void
.end method

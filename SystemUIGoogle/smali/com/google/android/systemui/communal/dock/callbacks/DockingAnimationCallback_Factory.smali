.class public final Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback_Factory;
.super Ljava/lang/Object;
.source "DockingAnimationCallback_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final animationTransitionDelayMsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback_Factory;->animationTransitionDelayMsProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback_Factory;->animationTransitionDelayMsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v1, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

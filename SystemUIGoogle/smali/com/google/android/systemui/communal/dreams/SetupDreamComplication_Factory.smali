.class public final Lcom/google/android/systemui/communal/dreams/SetupDreamComplication_Factory;
.super Ljava/lang/Object;
.source "SetupDreamComplication_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;",
        ">;"
    }
.end annotation


# instance fields
.field public final componentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamComponent$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamComponent$Factory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication_Factory;->componentFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication_Factory;->componentFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamComponent$Factory;

    new-instance v0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;-><init>(Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamComponent$Factory;)V

    return-object v0
.end method
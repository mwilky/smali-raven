.class public final Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback_Factory;
.super Ljava/lang/Object;
.source "NestDockManagerServiceCallback_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerComponent$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$16;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback_Factory;->factoryProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback_Factory;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerComponent$Factory;

    new-instance v0, Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback;-><init>(Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerComponent$Factory;)V

    return-object v0
.end method

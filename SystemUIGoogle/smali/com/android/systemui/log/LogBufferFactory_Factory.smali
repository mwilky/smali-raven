.class public final Lcom/android/systemui/log/LogBufferFactory_Factory;
.super Ljava/lang/Object;
.source "LogBufferFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/log/LogBufferFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final logcatEchoTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->logcatEchoTrackerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/LogBufferFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;)",
            "Lcom/android/systemui/log/LogBufferFactory_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/log/LogBufferFactory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/log/LogBufferFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)Lcom/android/systemui/log/LogBufferFactory;
    .locals 1

    new-instance v0, Lcom/android/systemui/log/LogBufferFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/log/LogBufferFactory;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/log/LogBufferFactory;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->logcatEchoTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogcatEchoTracker;

    invoke-static {v0, p0}, Lcom/android/systemui/log/LogBufferFactory_Factory;->newInstance(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)Lcom/android/systemui/log/LogBufferFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBufferFactory_Factory;->get()Lcom/android/systemui/log/LogBufferFactory;

    move-result-object p0

    return-object p0
.end method

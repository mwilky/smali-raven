.class public final Lcom/google/android/systemui/autorotate/DataLogger_Factory;
.super Ljava/lang/Object;
.source "DataLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/autorotate/DataLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final statsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/StatsManager;",
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
            "Landroid/app/StatsManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/DataLogger_Factory;->statsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/autorotate/DataLogger_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/StatsManager;",
            ">;)",
            "Lcom/google/android/systemui/autorotate/DataLogger_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/autorotate/DataLogger_Factory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/autorotate/DataLogger_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/app/StatsManager;)Lcom/google/android/systemui/autorotate/DataLogger;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/autorotate/DataLogger;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/autorotate/DataLogger;-><init>(Landroid/app/StatsManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/autorotate/DataLogger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger_Factory;->statsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatsManager;

    invoke-static {p0}, Lcom/google/android/systemui/autorotate/DataLogger_Factory;->newInstance(Landroid/app/StatsManager;)Lcom/google/android/systemui/autorotate/DataLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/autorotate/DataLogger_Factory;->get()Lcom/google/android/systemui/autorotate/DataLogger;

    move-result-object p0

    return-object p0
.end method

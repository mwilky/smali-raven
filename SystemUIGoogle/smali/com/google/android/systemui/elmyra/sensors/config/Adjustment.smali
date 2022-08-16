.class public abstract Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;
.super Ljava/lang/Object;
.source "Adjustment.java"


# instance fields
.field public mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract adjustSensitivity(F)F
.end method

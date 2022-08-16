.class public abstract Lcom/google/android/systemui/columbus/sensors/config/Adjustment;
.super Ljava/lang/Object;
.source "Adjustment.kt"


# instance fields
.field public callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract adjustSensitivity(F)F
.end method

.class public abstract Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;
.super Ljava/lang/Object;
.source "Adjustment.java"


# instance fields
.field private mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract adjustSensitivity(F)F
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected onSensitivityChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->mCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method

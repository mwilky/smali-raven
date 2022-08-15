.class public abstract Lcom/android/server/lights/LogicalLight;
.super Ljava/lang/Object;
.source "LogicalLight.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract pulse()V
.end method

.method public abstract setBrightness(F)V
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setFlashing(IIII)V
.end method

.method public abstract setVrMode(Z)V
.end method

.method public abstract turnOff()V
.end method

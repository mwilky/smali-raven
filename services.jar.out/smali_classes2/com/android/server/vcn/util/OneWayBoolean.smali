.class public Lcom/android/server/vcn/util/OneWayBoolean;
.super Ljava/lang/Object;
.source "OneWayBoolean.java"


# instance fields
.field private mValue:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    return v0
.end method

.method public setTrue()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    return-void
.end method

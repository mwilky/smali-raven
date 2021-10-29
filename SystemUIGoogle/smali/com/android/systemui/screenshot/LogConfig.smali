.class Lcom/android/systemui/screenshot/LogConfig;
.super Ljava/lang/Object;
.source "LogConfig.java"


# direct methods
.method static logTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p0, "Screenshot"

    return-object p0
.end method

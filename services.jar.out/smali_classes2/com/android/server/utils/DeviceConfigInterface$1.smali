.class Lcom/android/server/utils/DeviceConfigInterface$1;
.super Ljava/lang/Object;
.source "DeviceConfigInterface.java"

# interfaces
.implements Lcom/android/server/utils/DeviceConfigInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/DeviceConfigInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2

    invoke-static {p1, p2, p3, p4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 0

    invoke-static {p1}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

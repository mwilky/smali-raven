.class public final Lcom/android/systemui/ImageWallpaper_Factory;
.super Ljava/lang/Object;
.source "ImageWallpaper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/ImageWallpaper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/ImageWallpaper_Factory;
    .locals 1

    invoke-static {}, Lcom/android/systemui/ImageWallpaper_Factory$InstanceHolder;->access$000()Lcom/android/systemui/ImageWallpaper_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/systemui/ImageWallpaper;
    .locals 1

    new-instance v0, Lcom/android/systemui/ImageWallpaper;

    invoke-direct {v0}, Lcom/android/systemui/ImageWallpaper;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/ImageWallpaper;
    .locals 0

    invoke-static {}, Lcom/android/systemui/ImageWallpaper_Factory;->newInstance()Lcom/android/systemui/ImageWallpaper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper_Factory;->get()Lcom/android/systemui/ImageWallpaper;

    move-result-object p0

    return-object p0
.end method

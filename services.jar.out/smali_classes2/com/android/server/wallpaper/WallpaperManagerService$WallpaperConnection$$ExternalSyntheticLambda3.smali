.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/RectF;

.field public final synthetic f$1:Landroid/app/WallpaperColors;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$0:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$1:Landroid/app/WallpaperColors;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$0:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;->f$1:Landroid/app/WallpaperColors;

    check-cast p1, Landroid/app/ILocalWallpaperColorConsumer;

    invoke-static {v0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$onLocalWallpaperColorsChanged$1(Landroid/graphics/RectF;Landroid/app/WallpaperColors;Landroid/app/ILocalWallpaperColorConsumer;)V

    return-void
.end method

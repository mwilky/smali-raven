.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field public final synthetic f$1:Landroid/graphics/RectF;

.field public final synthetic f$2:Landroid/app/WallpaperColors;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;->f$2:Landroid/app/WallpaperColors;

    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;->f$2:Landroid/app/WallpaperColors;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;->f$3:I

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$onLocalWallpaperColorsChanged$2$WallpaperManagerService$WallpaperConnection(Landroid/graphics/RectF;Landroid/app/WallpaperColors;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.class public final synthetic Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/LocalColorRepository;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/RectF;

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/LocalColorRepository;ILandroid/graphics/RectF;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    iput p2, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    iget v1, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Consumer;

    check-cast p1, Landroid/app/ILocalWallpaperColorConsumer;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wallpaper/LocalColorRepository;->lambda$forEachCallback$1$LocalColorRepository(ILandroid/graphics/RectF;Ljava/util/function/Consumer;Landroid/app/ILocalWallpaperColorConsumer;)V

    return-void
.end method

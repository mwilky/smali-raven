.class public final synthetic Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/LocalColorRepository;

.field public final synthetic f$1:Landroid/app/ILocalWallpaperColorConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/LocalColorRepository;Landroid/app/ILocalWallpaperColorConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    iput-object p2, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$1:Landroid/app/ILocalWallpaperColorConsumer;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$1:Landroid/app/ILocalWallpaperColorConsumer;

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/LocalColorRepository;->lambda$addAreas$0$LocalColorRepository(Landroid/app/ILocalWallpaperColorConsumer;)V

    return-void
.end method

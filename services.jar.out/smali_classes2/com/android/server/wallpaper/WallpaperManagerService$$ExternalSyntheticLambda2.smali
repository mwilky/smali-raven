.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->$r8$lambda$xaiLYL28aNwphR_RTh_db66FbfI(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.class public Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
.super Ljava/lang/Object;
.source "ActivityTaskManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageConfig"
.end annotation


# instance fields
.field public final mLocales:Landroid/os/LocaleList;

.field public final mNightMode:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Landroid/os/LocaleList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mNightMode:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageConfig: nightMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " locales "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

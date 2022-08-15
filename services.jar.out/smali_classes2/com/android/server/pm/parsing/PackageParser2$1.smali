.class public Lcom/android/server/pm/parsing/PackageParser2$1;
.super Lcom/android/server/pm/parsing/PackageParser2$Callback;
.source "PackageParser2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/parsing/PackageParser2;->forParsingFileWithDefaults()Lcom/android/server/pm/parsing/PackageParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$platformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/internal/compat/IPlatformCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageParser2$1;->val$platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-direct {p0}, Lcom/android/server/pm/parsing/PackageParser2$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFeature(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageParser2$1;->val$platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PackageParsing"

    const-string p2, "IPlatformCompat query failed"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.class public interface abstract Lcom/android/server/pm/pkg/component/ParsedActivity;
.super Ljava/lang/Object;
.source "ParsedActivity.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedMainComponent;


# direct methods
.method public static makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/pm/pkg/component/ParsedActivity;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getColorMode()I
.end method

.method public abstract getConfigChanges()I
.end method

.method public abstract getDocumentLaunchMode()I
.end method

.method public abstract getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLaunchMode()I
.end method

.method public abstract getLockTaskLaunchMode()I
.end method

.method public abstract getMaxAspectRatio()F
.end method

.method public abstract getMaxRecents()I
.end method

.method public abstract getMinAspectRatio()F
.end method

.method public abstract getParentActivityName()Ljava/lang/String;
.end method

.method public abstract getPermission()Ljava/lang/String;
.end method

.method public abstract getPersistableMode()I
.end method

.method public abstract getPrivateFlags()I
.end method

.method public abstract getRequestedVrComponent()Ljava/lang/String;
.end method

.method public abstract getResizeMode()I
.end method

.method public abstract getRotationAnimation()I
.end method

.method public abstract getScreenOrientation()I
.end method

.method public abstract getSoftInputMode()I
.end method

.method public abstract getTargetActivity()Ljava/lang/String;
.end method

.method public abstract getTaskAffinity()Ljava/lang/String;
.end method

.method public abstract getTheme()I
.end method

.method public abstract getUiOptions()I
.end method

.method public abstract getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;
.end method

.method public abstract isSupportsSizeChanges()Z
.end method

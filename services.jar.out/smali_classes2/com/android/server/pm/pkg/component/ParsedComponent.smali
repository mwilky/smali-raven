.class public interface abstract Lcom/android/server/pm/pkg/component/ParsedComponent;
.super Ljava/lang/Object;
.source "ParsedComponent.java"


# virtual methods
.method public abstract getBanner()I
.end method

.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getDescriptionRes()I
.end method

.method public abstract getFlags()I
.end method

.method public abstract getIcon()I
.end method

.method public abstract getIntents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLabelRes()I
.end method

.method public abstract getLogo()I
.end method

.method public abstract getMetaData()Landroid/os/Bundle;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNonLocalizedLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end method

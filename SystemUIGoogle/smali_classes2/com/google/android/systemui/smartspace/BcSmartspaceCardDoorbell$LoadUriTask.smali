.class Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;
.super Landroid/os/AsyncTask;
.source "BcSmartspaceCardDoorbell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadUriTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;",
        "Ljava/lang/Void;",
        "Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;)Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;
    .locals 2

    array-length p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mHeightInPx:I

    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->access$000(Ljava/io/InputStream;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " got exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BcSmartspaceCardBell"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;->doInBackground([Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;)Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LoadUriTask;->onPostExecute(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;)V

    return-void
.end method

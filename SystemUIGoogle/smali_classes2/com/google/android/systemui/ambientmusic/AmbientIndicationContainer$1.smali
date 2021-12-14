.class Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$1;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "AmbientIndicationContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updatePill()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$1;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$1;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-static {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->access$000(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$1;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-static {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->access$000(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

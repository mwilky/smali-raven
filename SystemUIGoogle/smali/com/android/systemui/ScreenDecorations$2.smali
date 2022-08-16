.class public final Lcom/android/systemui/ScreenDecorations$2;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrivacyDotHidden(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->setOverlayWindowVisibilityIfViewExist(Landroid/view/View;I)V

    return-void
.end method

.method public final onPrivacyDotShown(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->setOverlayWindowVisibilityIfViewExist(Landroid/view/View;I)V

    return-void
.end method

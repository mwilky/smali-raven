.class public final Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$1;
.super Ljava/lang/Object;
.source "HideComplicationTouchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$1;->this$0:Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$1;->this$0:Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;

    iget-object p0, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mVisibilityController:Lcom/android/systemui/dreams/complication/Complication$VisibilityController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/dreams/complication/Complication$VisibilityController;->setVisibility(I)V

    return-void
.end method

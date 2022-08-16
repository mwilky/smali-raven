.class public final Lcom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1;
.super Ljava/lang/Object;
.source "ScreenTouch.kt"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/ScreenTouch;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenTouch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenTouch.kt\ncom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1#2:107\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/ScreenTouch;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->onInputEvent(Landroid/view/InputEvent;)V

    :goto_0
    return-void
.end method

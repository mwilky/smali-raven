.class public final Lcom/android/systemui/ScreenDecorations$6;
.super Landroid/content/BroadcastReceiver;
.source "ScreenDecorations.java"


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

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$6;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations$6;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p2, p2, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$4;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SettingObserver;->setUserId(I)V

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$6;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$4;

    invoke-virtual {p1}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/ScreenDecorations;->-$$Nest$mupdateColorInversion(Lcom/android/systemui/ScreenDecorations;I)V

    return-void
.end method
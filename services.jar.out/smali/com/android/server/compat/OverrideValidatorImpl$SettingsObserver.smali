.class public Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OverrideValidatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/compat/OverrideValidatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/compat/OverrideValidatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/OverrideValidatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;->this$0:Lcom/android/server/compat/OverrideValidatorImpl;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/compat/OverrideValidatorImpl$SettingsObserver;->this$0:Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-static {p0}, Lcom/android/server/compat/OverrideValidatorImpl;->-$$Nest$fgetmContext(Lcom/android/server/compat/OverrideValidatorImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_non_debuggable_final_build_for_compat"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    invoke-static {p0, v1}, Lcom/android/server/compat/OverrideValidatorImpl;->-$$Nest$fputmForceNonDebuggableFinalBuild(Lcom/android/server/compat/OverrideValidatorImpl;Z)V

    return-void
.end method

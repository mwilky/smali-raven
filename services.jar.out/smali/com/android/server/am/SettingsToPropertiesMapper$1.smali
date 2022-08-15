.class public Lcom/android/server/am/SettingsToPropertiesMapper$1;
.super Landroid/database/ContentObserver;
.source "SettingsToPropertiesMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertiesFromSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

.field public final synthetic val$globalSetting:Ljava/lang/String;

.field public final synthetic val$propName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$globalSetting:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$propName:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$globalSetting:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$propName:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

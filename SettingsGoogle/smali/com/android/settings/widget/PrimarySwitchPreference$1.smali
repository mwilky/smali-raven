.class Lcom/android/settings/widget/PrimarySwitchPreference$1;
.super Ljava/lang/Object;
.source "PrimarySwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/PrimarySwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/PrimarySwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/PrimarySwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference$1;->this$0:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference$1;->this$0:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/PrimarySwitchPreference;->access$000(Lcom/android/settings/widget/PrimarySwitchPreference;)Landroid/widget/Switch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference$1;->this$0:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/PrimarySwitchPreference;->access$000(Lcom/android/settings/widget/PrimarySwitchPreference;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference$1;->this$0:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/PrimarySwitchPreference;->access$100(Lcom/android/settings/widget/PrimarySwitchPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/widget/PrimarySwitchPreference$1;->this$0:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/PrimarySwitchPreference;->access$100(Lcom/android/settings/widget/PrimarySwitchPreference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/widget/PrimarySwitchPreference$1;->this$0:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-static {p0}, Lcom/android/settings/widget/PrimarySwitchPreference;->access$100(Lcom/android/settings/widget/PrimarySwitchPreference;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/PrimarySwitchPreference$1;->this$0:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-static {p0}, Lcom/android/settings/widget/PrimarySwitchPreference;->access$100(Lcom/android/settings/widget/PrimarySwitchPreference;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/widget/PrimarySwitchPreference;->access$200(Lcom/android/settings/widget/PrimarySwitchPreference;Z)Z

    :goto_0
    return-void
.end method

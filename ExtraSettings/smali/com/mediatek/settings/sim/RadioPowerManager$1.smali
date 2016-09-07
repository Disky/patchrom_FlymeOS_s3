.class Lcom/mediatek/settings/sim/RadioPowerManager$1;
.super Ljava/lang/Object;
.source "RadioPowerManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/sim/RadioPowerManager;->bindPreference(Lcom/mediatek/settings/sim/RadioPowerPreference;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/RadioPowerManager;

.field final synthetic val$preference:Lcom/mediatek/settings/sim/RadioPowerPreference;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/RadioPowerManager;ILcom/mediatek/settings/sim/RadioPowerPreference;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerManager;

    iput p2, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->val$subId:I

    iput-object p3, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->val$preference:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerManager;

    iget v2, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->val$subId:I

    # invokes: Lcom/mediatek/settings/sim/RadioPowerManager;->isChanged(IZ)Z
    invoke-static {v1, v2, p2}, Lcom/mediatek/settings/sim/RadioPowerManager;->access$000(Lcom/mediatek/settings/sim/RadioPowerManager;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->val$preference:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-virtual {v1, p2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioOn(Z)V

    .line 56
    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerManager;

    iget v2, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->val$subId:I

    invoke-virtual {v1, p2, v2}, Lcom/mediatek/settings/sim/RadioPowerManager;->setRadionOn(ZI)V

    .line 57
    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->val$preference:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerManager;

    iget v1, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->val$subId:I

    # invokes: Lcom/mediatek/settings/sim/RadioPowerManager;->updateRadioMsimDb(ZI)V
    invoke-static {v0, p2, v1}, Lcom/mediatek/settings/sim/RadioPowerManager;->access$100(Lcom/mediatek/settings/sim/RadioPowerManager;ZI)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerManager$1;->val$preference:Lcom/mediatek/settings/sim/RadioPowerPreference;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioOn(Z)V

    goto :goto_0
.end method

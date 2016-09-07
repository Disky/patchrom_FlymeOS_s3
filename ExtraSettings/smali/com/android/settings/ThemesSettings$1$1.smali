.class Lcom/android/extrasettings/ThemesSettings$1$1;
.super Ljava/lang/Object;
.source "ThemesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/ThemesSettings$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/extrasettings/ThemesSettings$1;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/ThemesSettings$1;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/extrasettings/ThemesSettings$1$1;->this$1:Lcom/android/extrasettings/ThemesSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 119
    .local v0, "ou":Ljava/io/OutputStream;
    const-string v1, "reboot\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 120
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 121
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "ou":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0
.end method

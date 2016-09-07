.class public Lcom/mediatek/internal/telephony/ppl/PplMessageManager;
.super Ljava/lang/Object;
.source "PplMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;,
        Lcom/mediatek/internal/telephony/ppl/PplMessageManager$Type;
    }
.end annotation


# static fields
.field private static final SMS_PATTERNS:[Ljava/lang/String;

.field public static final SMS_SENT_ACTION:Ljava/lang/String; = "com.mediatek.ppl.SMS_SENT"

.field private static final SMS_TEMPLATES:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessagePatterns:[Ljava/util/regex/Pattern;

.field private final mMessageTemplates:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 34
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6211\u7684\u624b\u673a\u53ef\u80fd\u88ab\u76d7\uff0c\u8bf7\u4fdd\u7559\u53d1\u9001\u6b64\u77ed\u4fe1\u7684\u53f7\u7801\u3002"

    aput-object v1, v0, v6

    const-string v1, "$suoding$"

    const-string v2, "$"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "\u5df2\u63a5\u53d7\u5230\u60a8\u7684\u9501\u5c4f\u6307\u4ee4\uff0c\u9501\u5c4f\u6210\u529f\u3002"

    aput-object v1, v0, v8

    const-string v1, "$jiesuo$"

    const-string v2, "$"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "\u5df2\u63a5\u53d7\u5230\u60a8\u7684\u89e3\u9501\u6307\u4ee4\uff0c\u89e3\u9501\u6210\u529f\u3002"

    aput-object v1, v0, v10

    const/4 v1, 0x5

    const-string v2, "$mima$"

    const-string v3, "$"

    const-string v4, "#"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u60a8\u7684\u624b\u673a\u9632\u76d7\u5bc6\u7801\u4e3a%s\u3002"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "$xiaohui$"

    const-string v3, "$"

    const-string v4, "#"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u8fdc\u7a0b\u5220\u9664\u6570\u636e\u5df2\u5f00\u59cb\u3002"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u8fdc\u7a0b\u6570\u636e\u5220\u9664\u5df2\u5b8c\u6210\uff0c\u60a8\u7684\u9690\u79c1\u5f97\u5230\u4fdd\u62a4\uff0c\u8bf7\u653e\u5fc3\u3002"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u5f00\u542f\u4e86\u624b\u673a\u9632\u76d7\u529f\u80fd\uff0c\u5df2\u5c06\u4f60\u7684\u624b\u673a\u53f7\u7801\u8bbe\u7f6e\u4e3a\u7d27\u6025\u8054\u7cfb\u4eba\u53f7\u7801\uff0c\u8fd9\u6837\u624b\u673a\u4e22\u5931\u4e5f\u80fd\u591f\u8fdc\u7a0b\u63a7\u5236\u5566\u3002\n\u4ee5\u4e0b\u662f\u76f8\u5173\u6307\u4ee4\uff1a\n\u8fdc\u7a0b\u9501\u5b9a\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$suoding$"

    const-string v4, "$"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\u8fdc\u7a0b\u9500\u6bc1\u6570\u636e\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$xiaohui$"

    const-string v4, "$"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\u627e\u56de\u5bc6\u7801\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$mima$"

    const-string v4, "$"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->SMS_TEMPLATES:[Ljava/lang/String;

    .line 73
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6211\u7684\u624b\u673a\u53ef\u80fd\u88ab\u76d7\uff0c\u8bf7\u4fdd\u7559\u53d1\u9001\u6b64\u77ed\u4fe1\u7684\u53f7\u7801\u3002"

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " *"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$suoding$"

    const-string v3, "$"

    const-string v4, "#"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "\u5df2\u63a5\u53d7\u5230\u60a8\u7684\u9501\u5c4f\u6307\u4ee4\uff0c\u9501\u5c4f\u6210\u529f\u3002"

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " *"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$jiesuo$"

    const-string v3, "$"

    const-string v4, "#"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "\u5df2\u63a5\u53d7\u5230\u60a8\u7684\u89e3\u9501\u6307\u4ee4\uff0c\u89e3\u9501\u6210\u529f\u3002"

    aput-object v1, v0, v10

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " *"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$mima$"

    const-string v4, "$"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " *"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u60a8\u7684\u624b\u673a\u9632\u76d7\u5bc6\u7801\u4e3a[0-9]*\u3002"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " *"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$xiaohui$"

    const-string v4, "$"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " *"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u8fdc\u7a0b\u5220\u9664\u6570\u636e\u5df2\u5f00\u59cb\u3002"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u8fdc\u7a0b\u6570\u636e\u5220\u9664\u5df2\u5b8c\u6210\uff0c\u60a8\u7684\u9690\u79c1\u5f97\u5230\u4fdd\u62a4\uff0c\u8bf7\u653e\u5fc3\u3002"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u5f00\u542f\u4e86\u624b\u673a\u9632\u76d7\u529f\u80fd\uff0c\u5df2\u5c06\u4f60\u7684\u624b\u673a\u53f7\u7801\u8bbe\u7f6e\u4e3a\u7d27\u6025\u8054\u7cfb\u4eba\u53f7\u7801\uff0c\u8fd9\u6837\u624b\u673a\u4e22\u5931\u4e5f\u80fd\u591f\u8fdc\u7a0b\u63a7\u5236\u5566\u3002\n\u4ee5\u4e0b\u662f\u76f8\u5173\u6307\u4ee4\uff1a\n\u8fdc\u7a0b\u9501\u5b9a\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$suoding$"

    const-string v4, "$"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\u8fdc\u7a0b\u9500\u6bc1\u6570\u636e\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$xiaohui$"

    const-string v4, "$"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\u627e\u56de\u5bc6\u7801\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$mima$"

    const-string v4, "$"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->SMS_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mContext:Landroid/content/Context;

    .line 242
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 243
    .local v2, "resources":Landroid/content/res/Resources;
    sget-object v3, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->SMS_TEMPLATES:[Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessageTemplates:[Ljava/lang/String;

    .line 244
    sget-object v1, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->SMS_PATTERNS:[Ljava/lang/String;

    .line 245
    .local v1, "patternStrings":[Ljava/lang/String;
    array-length v3, v1

    new-array v3, v3, [Ljava/util/regex/Pattern;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessagePatterns:[Ljava/util/regex/Pattern;

    .line 246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessagePatterns:[Ljava/util/regex/Pattern;

    aget-object v4, v1, v0

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v3, v0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs buildMessage(B[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # B
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->getMessageTemplate(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTemplate(B)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # B

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessageTemplates:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMessageType(Ljava/lang/String;)B
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v1, -0x1

    .line 262
    .local v1, "result":B
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessagePatterns:[Ljava/util/regex/Pattern;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessagePatterns:[Ljava/util/regex/Pattern;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    move v1, v0

    .line 268
    :cond_0
    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 269
    const/16 v1, 0xa

    .line 271
    :cond_1
    return v1

    .line 262
    :cond_2
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_0
.end method

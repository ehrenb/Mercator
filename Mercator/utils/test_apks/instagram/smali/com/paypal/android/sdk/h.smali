.class public final Lcom/paypal/android/sdk/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/fz;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->a:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u540c\u610f\u5e76\u4ed8\u6b3e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->b:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u548c\u5176\u4ed6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->c:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u6b63\u5728\u9a8c\u8bc1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->d:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8fd4\u56de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->e:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5907\u7528"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->f:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u53d6\u6d88"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->g:Lcom/paypal/android/sdk/fb;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->h:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carta Aura"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->i:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carte Aurore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->j:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carta Prepagata PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->k:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carte Bancaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->l:Lcom/paypal/android/sdk/fb;

    const-string v2, "Cofinoga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->m:Lcom/paypal/android/sdk/fb;

    const-string v2, "Delta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->n:Lcom/paypal/android/sdk/fb;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->o:Lcom/paypal/android/sdk/fb;

    const-string v2, "Electron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->p:Lcom/paypal/android/sdk/fb;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->q:Lcom/paypal/android/sdk/fb;

    const-string v2, "Maestro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->r:Lcom/paypal/android/sdk/fb;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->s:Lcom/paypal/android/sdk/fb;

    const-string v2, "Postepay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->t:Lcom/paypal/android/sdk/fb;

    const-string v2, "4 \u00e9toiles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->u:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tarjeta Aurora"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->v:Lcom/paypal/android/sdk/fb;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->w:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u66f4\u6539\u4ed8\u6b3e\u65b9\u5f0f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->x:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u652f\u7968"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->y:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u6b63\u5728\u68c0\u67e5\u6b64\u8bbe\u5907\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->z:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u6e05\u9664\u5361\u4fe1\u606f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->A:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u786e\u8ba4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->B:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u60a8\u786e\u5b9a\u8981\u6e05\u9664\u60a8\u7684\u5361\u4fe1\u606f\u5417\uff1f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->C:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u7528\u5361\u4ed8\u6b3e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->D:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u60a8\u786e\u5b9a\u8981\u9000\u51faPayPal\u5417\uff1f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->E:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4ed8\u6b3e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->F:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u540c\u610f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->G:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8d26\u6237\u521b\u5efa\u65e5\u671f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->H:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8d26\u6237\u72b6\u6001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->I:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8d26\u6237\u7c7b\u578b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->J:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5730\u5740"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->K:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5e74\u9f84\u8303\u56f4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->L:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u51fa\u751f\u65e5\u671f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->M:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u90ae\u7bb1\u5730\u5740"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->N:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5168\u540d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->O:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u6027\u522b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->P:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8bed\u8a00"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->Q:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5730\u533a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->R:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u7535\u8bdd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->S:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u65f6\u533a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->T:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5171\u4eab\u4ee5\u4e0b\uff1a%s\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->U:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4f7f\u7528\u65e0\u7f1d\u7ed3\u8d26\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->V:Lcom/paypal/android/sdk/fb;

    const-string v2, "%s\u8981\u6c42\u60a8\uff1a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->W:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u4ed8\u6b3e\u65b9\u5f0f</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->X:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u652f\u6301\u663e\u793a\u60a8\u7684\u8d44\u91d1\u9009\u9879\uff0c\u8ba9\u60a8\u53ef\u4ee5\u81ea\u7531\u9009\u62e9\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->Y:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5bf9\u4ee5\u540e\u7528PayPal\u4ed8\u6b3e\u7684%2$s\u8d2d\u7269<a href=\'%1$s\'>\u6388\u6743\u4ed8\u6b3e</a>\u3002\u60a8\u6388\u6743PayPal\u652f\u4ed8%3$s\u8bf7\u6c42\u7684\u6240\u6709\u91d1\u989d\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->Z:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5141\u8bb8\u4ed6\u4eec\u5728\u60a8\u7684PayPal\u94b1\u5305\u4e2d\u6dfb\u52a0\u5e76\u7ba1\u7406\u4ed6\u4eec\u7684\u79ef\u5206\u5361\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aa:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u540c\u610f%1$s\u300a<a href=\'%2$s\'>\u9690\u79c1\u6743\u4fdd\u62a4\u89c4\u5219</a>\u300b\u548c\u300a<a href=\'%3$s\'>\u7528\u6237\u534f\u8bae</a>\u300b\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ab:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8\u4ed6\u4eec\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u6536\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ac:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8\u4ed6\u4eec\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u4ed8\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ad:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u540c\u610f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ae:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u90ae\u7bb1\u5730\u5740"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->af:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u6a21\u62df\u6570\u636e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ag:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sandbox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ah:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5230\u671f\uff1a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ai:Lcom/paypal/android/sdk/fb;

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u4ed8\u6b3e\u65b9\u5f0f\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aj:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5fd8\u4e86\u5bc6\u7801\uff1f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ak:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4ece"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->al:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u60a8\u5e0c\u671b\u5982\u4f55\u4e3a\u4ee5\u540e\u5411%1$s\u7684\u4ed8\u6b3e\u63d0\u4f9b\u8d44\u91d1\uff1f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->am:Lcom/paypal/android/sdk/fb;

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u534f\u8bae</strong></h1><p>\u6b64\u5546\u5bb6\u5c06\u4f7f\u7528\u60a8\u7684\u9ed8\u8ba4\u8d44\u91d1\u6765\u6e90\u652f\u4ed8\u65e5\u540e\u7684PayPal\u4ed8\u6b3e\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u534f\u8bae\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p><p>\u6b64\u65f6\u9002\u7528<a href=\'%s\'>PayPal\u7528\u6237\u534f\u8bae</a>\u201c\u5faa\u73af\u4ed8\u6b3e\u201d\u90e8\u5206\u7684\u89c4\u5b9a\u3002</p><p>\u4e3a\u786e\u4fdd\u53ef\u901a\u8fc7\u60a8\u7684PayPal\u8d26\u6237\u4ed8\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u8d44\u91d1\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->an:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5185\u90e8\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ao:Lcom/paypal/android/sdk/fb;

    const-string v2, "<p>\u70b9\u51fb\u4e0b\u9762\u7684\u6309\u94ae\uff0c\u5373\u8868\u793a\u672c\u4eba\u540c\u610f<a href=\'%1$s\'>PayPal\u7528\u6237\u534f\u8bae</a>\u7684\u6761\u6b3e\uff0c\u5e76\u58f0\u660e\u672c\u4eba\u9075\u5b88\u65e5\u672c\u7684\u6cd5\u5f8b\u6cd5\u89c4\uff08\u5305\u62ec\u6839\u636e<a href=\'%2$s\'>\u5916\u6c47\u4e0e\u5916\u8d38\u5b9e\u65bd\u6761\u4f8b</a>\u5bf9\u671d\u9c9c\u548c\u4f0a\u6717\u5b9e\u65bd\u7684\u4ed8\u6b3e\u5236\u88c1\u63aa\u65bd\uff09\u6765\u5b8c\u6210\u4ea4\u6613\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ap:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aq:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4f7f\u7528PayPal\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ar:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u9000\u51fa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->as:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u9000\u51fa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->at:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u786e\u5b9a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->au:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5bc6\u7801"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->av:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4ea4\u8d27\u540e\u4ed8\u6b3e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aw:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4ed8\u6b3e\u65b9\u5f0f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ax:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u7528\u5361\u4ed8\u6b3e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ay:Lcom/paypal/android/sdk/fb;

    const-string v2, "PayPal\u4f59\u989d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->az:Lcom/paypal/android/sdk/fb;

    const-string v2, "PayPal Credit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aA:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u7535\u8bdd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aB:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8bc6\u522b\u7801"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aC:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u9996\u9009\u4ed8\u6b3e\u65b9\u5f0f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aD:Lcom/paypal/android/sdk/fb;

    const-string v2, "PayPal\u4f1a\u4fdd\u62a4\u60a8\u7684<a href=\'%s\'>\u9690\u79c1</a>\u548c\u8d22\u52a1\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aE:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5904\u7406\u4e2d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aF:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8bb0\u4f4f\u5361\u7684\u4fe1\u606f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aG:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u6536\u6b3e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aH:Lcom/paypal/android/sdk/fb;

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u8bbe\u7f6e\u4e0b\u7684<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5408\u4f5c\u4f19\u4f34\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aI:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u50a8\u84c4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aJ:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4ed8\u6b3e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aK:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4e0ePayPal\u670d\u52a1\u5668\u901a\u4fe1\u65f6\u53d1\u751f\u4e86\u95ee\u9898\u3002\u8bf7\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aL:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8bf7\u91cd\u65b0\u767b\u5f55\u5230PayPal\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aM:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4f1a\u8bdd\u5df2\u8d85\u65f6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aN:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u9001\u8d27\u5730\u5740"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aO:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5c1a\u672a\u6ce8\u518c\uff1f\u6ce8\u518c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aP:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4fdd\u6301\u767b\u5f55\u72b6\u6001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aQ:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u7cfb\u7edf\u9519\u8bef (%s)\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aR:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u91cd\u8bd5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aS:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u65e0\u6cd5\u767b\u5f55\uff0c\u56e0\u4e3a\u60a8\u7684\u8d26\u6237\u5df2\u542f\u7528\u53cc\u56e0\u7d20\u9a8c\u8bc1\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aT:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5b89\u5168\u7801"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aU:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u53d1\u9001\u77ed\u4fe1\u5230\u60a8\u7684\u624b\u673a\u3002\u60a8\u6536\u5230\u76846\u4f4d\u6570\u4ee3\u7801\u57285\u5206\u949f\u5185\u6709\u6548\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aV:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u6b63\u5728\u53d1\u9001\u77ed\u4fe1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aW:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8f93\u51656\u4f4d\u6570\u5b89\u5168\u4ee3\u7801"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aX:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u60a8\u7684\u624b\u673a\u53f7\u7801"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aY:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u53d1\u9001\u77ed\u4fe1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aZ:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u91cd\u65b0\u53d1\u9001\u77ed\u4fe1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ba:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u65e0\u6cd5\u767b\u5f55\uff0c\u56e0\u4e3a\u60a8\u7684\u8d26\u6237\u5df2\u542f\u7528\u53cc\u56e0\u7d20\u9a8c\u8bc1\u3002\u8bf7\u8bbf\u95eePayPal\u7f51\u7ad9\u4ee5\u6fc0\u6d3b\u60a8\u7684\u5bc6\u94a5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bb:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4e0d\u5141\u8bb8\u901a\u8fc7\u6b64\u8bbe\u5907\u4ed8\u6b3e\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bc:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u672a\u7ecf\u6388\u6743\u7684\u8bbe\u5907"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bd:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4e0d\u5141\u8bb8\u5411\u6b64\u5546\u5bb6\u4ed8\u6b3e\uff08\u5ba2\u6237\u7aefID\u65e0\u6548\uff09\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->be:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u65e0\u6548\u7684\u5546\u5bb6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bf:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5904\u7406\u60a8\u7684\u4ed8\u6b3e\u65f6\u9047\u5230\u4e86\u95ee\u9898\u3002\u8bf7\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bg:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u65e0\u6cd5\u8bc6\u522b\u7684\u6e90"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bh:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5f88\u62b1\u6b49"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bi:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u60a8\u7684\u8ba2\u5355"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bj:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u6b64\u8bbe\u5907\u4e0d\u80fd\u4e0ePayPal\u901a\u4fe1\uff0c\u56e0\u4e3a\u6b64\u7248\u672c\u7684Android\u592a\u65e7\u3002\u8bf7\u5347\u7ea7Android\u6216\u5c1d\u8bd5\u8f83\u65b0\u7684\u8bbe\u5907\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bk:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u6e05\u9664\u5361\uff1f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bl:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u540c\u610f\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bm:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8fde\u63a5\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bn:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bo:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4f7f\u7528\u5bc6\u7801\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bp:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4f7f\u7528\u8bc6\u522b\u7801\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bq:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u8bf7\u7a0d\u5019\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->br:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u4ed8\u6b3e\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bs:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u626b\u63cf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bt:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u5b89\u5168\u4ee3\u7801\u4e0d\u6b63\u786e\u3002\u8bf7\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bu:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u901a\u8fc7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bv:Lcom/paypal/android/sdk/fb;

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u7684\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u7684\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u7684\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u7684\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u4ed8\u6b3e\u65b9\u5f0f</a>\u7684\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "\u4e0e\u4ed6\u4eec\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u7684\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u7684\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u4ed8\u6b3e\u65b9\u5f0f</a>\u7684\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u7684\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "\u5171\u4eab\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u5173\u8054\u7684<a href=\'%1$s\'>\u4ed8\u6b3e\u65b9\u5f0f</a>\u7684\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u4ee3\u8868\u60a8\u5171\u4eab<a href=\'%1$s\'>\u8d44\u91d1\u6765\u6e90</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p>\u5bf9\u4ee5\u540e\u7528PayPal\u4ed8\u6b3e\u7684%2$s\u8d2d\u7269<a href=\'%1$s\'>\u6388\u6743\u4ed8\u6b3e</a>\u3002\u60a8\u6388\u6743PayPal\u652f\u4ed8%3$s\u8bf7\u6c42\u7684\u6240\u6709\u91d1\u989d\u3002</p><p>\u8bf7\u9605\u8bfb<a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>PayPal\u5faa\u73af\u4ed8\u6b3e\u548c\u7ed3\u7b97\u534f\u8bae</a>\uff0c\u4e86\u89e3\u66f4\u591a\u4fe1\u606f\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p>\u5bf9\u4ee5\u540e\u7528PayPal\u4ed8\u6b3e\u7684%2$s\u8d2d\u7269<a href=\'%1$s\'>\u6388\u6743\u4ed8\u6b3e</a>\u3002\u60a8\u6388\u6743PayPal\u652f\u4ed8%3$s\u8bf7\u6c42\u7684\u6240\u6709\u91d1\u989d\u3002</p><p>\u8bf7\u9605\u8bfb<a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>PayPal\u5faa\u73af\u4ed8\u6b3e\u548c\u7ed3\u7b97\u534f\u8bae</a>\uff0c\u4e86\u89e3\u66f4\u591a\u4fe1\u606f\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "\u5bf9\u4ee5\u540e\u7528PayPal\u4ed8\u6b3e\u7684\u8d2d\u7269<a href=\'%1$s\'>\u6388\u6743\u4ed8\u6b3e</a>\u3002\u60a8\u6388\u6743\u5e76\u6307\u793aPayPal\u652f\u4ed8\u6240\u6709\u91d1\u989d\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "\u5bf9\u4ee5\u540e\u7528PayPal\u4ed8\u6b3e\u7684\u8d2d\u7269<a href=\'%1$s\'>\u6388\u6743\u4ed8\u6b3e</a>\u3002\u60a8\u6388\u6743\u5e76\u6307\u793aPayPal\u652f\u4ed8\u6240\u6709\u91d1\u989d\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "\u5bf9\u4ee5\u540e\u7528PayPal\u4ed8\u6b3e\u7684\u8d2d\u7269<a href=\'%1$s\'>\u6388\u6743\u4ed8\u6b3e</a>\u3002\u60a8\u6388\u6743\u5e76\u6307\u793aPayPal\u652f\u4ed8\u6240\u6709\u91d1\u989d\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "\u9884\u5148\u6838\u51c6\u901a\u8fc7\u60a8\u7684PayPal\u8d26\u6237\u8fdb\u884c\u65e5\u540e\u4ed8\u6b3e\uff0c\u800c\u4e0d\u9700\u8981\u6bcf\u6b21\u90fd\u767b\u5f55\u5230PayPal\u3002<a href=\'%1$s\'>\u67e5\u770b\u5176\u4ed6\u6761\u6b3e</a>\uff0c\u5305\u62ec\u4ed8\u6b3e\u65b9\u5f0f\u4ee5\u53ca\u5982\u4f55\u53d6\u6d88\u65e5\u540e\u4ed8\u6b3e\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u6536\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u6536\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u6536\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u6536\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u6536\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u6536\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u6536\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u4ed8\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u4ed8\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u4ed8\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u4ed8\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u4ed8\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u4ed8\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "\u5728\u60a8\u64a4\u56de\u540c\u610f\u524d\u5141\u8bb8%2$s\u4ee3\u8868\u60a8<a href=\'%1$s\'>\u4ed8\u6b3e</a>\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u5171\u4eab\u7684\u4fe1\u606f\u4ec5\u9650\u4e8e\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u5171\u4eab\u7684\u4fe1\u606f\u4ec5\u9650\u4e8e\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u5171\u4eab\u7684\u4fe1\u606f\u4ec5\u9650\u4e8e\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>\u4ed8\u6b3e\u65b9\u5f0f</strong></h1><p>PayPal\u4ec5\u5171\u4eab\u60a8\u7684\u54ea\u4e9b\u8d44\u91d1\u6765\u6e90\u53ef\u4f9b\u4f7f\u7528\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u534f\u8bae</strong></h1><p>\u4e3a\u786e\u4fdd\u4ee5\u540e\u53ef\u4ece\u60a8\u7684PayPal\u8d26\u6237\u6536\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u8d44\u91d1\u3002</p><p>\u60a8\u7684\u9ed8\u8ba4\u4ed8\u6b3e\u65b9\u5f0f\uff08PayPal\u4f59\u989d\u3001\u5173\u8054\u7684\u94f6\u884c\u8d26\u6237\u3001\u501f\u8bb0\u5361\u6216\u4fe1\u7528\u5361\uff0c\u7167\u6b64\u987a\u5e8f\u4f7f\u7528\uff09\u5c06\u7528\u4e8e\u652f\u4ed8PayPal\u8d2d\u7269\u6b3e\u9879\u3002\u8bf7\u6ce8\u610f\uff0c\u5982\u679c\u60a8\u7684\u9ed8\u8ba4\u4ed8\u6b3e\u65b9\u5f0f\u4e2d\u6ca1\u6709\u8db3\u591f\u7684\u8d44\u91d1\u6765\u652f\u4ed8\u8d2d\u7269\u6b3e\uff0c\u60a8\u7684\u94f6\u884c\u6216\u5361\u63d0\u4f9b\u5546\u53ef\u80fd\u4f1a\u5411\u60a8\u6536\u53d6\u8d39\u7528\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u534f\u8bae\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong>\uff0c\u70b9\u51fb<strong>\u8bbe\u7f6e</strong>\uff0c\u518d\u70b9\u51fb\u201c\u4f7f\u7528PayPal\u767b\u5f55\u201d\u65c1\u8fb9\u7684<strong>\u66f4\u6539</strong>\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u534f\u8bae</strong></h1><p>\u4e3a\u786e\u4fdd\u4ee5\u540e\u53ef\u4ece\u60a8\u7684PayPal\u8d26\u6237\u6536\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u8d44\u91d1\u3002</p><p>\u60a8\u7684PayPal\u4f59\u989d\u6216\u9996\u9009\u4fe1\u7528\u5361\u6216\u501f\u8bb0\u5361\u5c06\u7528\u4e8e\u652f\u4ed8PayPal\u8d2d\u7269\u6b3e\u9879\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u534f\u8bae\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u534f\u8bae</strong></h1><p>\u4e3a\u786e\u4fdd\u4ee5\u540e\u53ef\u4ece\u60a8\u7684PayPal\u8d26\u6237\u6536\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u6b3e\u9879\u3002</p><p>\u60a8\u7684\u9ed8\u8ba4\u4ed8\u6b3e\u65b9\u5f0f\u5c06\u7528\u4e8e\u652f\u4ed8PayPal\u8d2d\u7269\u6b3e\u9879\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u534f\u8bae\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u534f\u8bae</strong></h1><p>\u60a8\u7684\u9ed8\u8ba4\u8d44\u91d1\u6765\u6e90\u5c06\u7528\u4e8e\u652f\u4ed8\u4ee5\u540e\u5728\u6b64\u5546\u5bb6\u7684PayPal\u4ed8\u6b3e\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u534f\u8bae\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p><p>\u9002\u7528<a href=\'%s\'>PayPal\u300a\u7528\u6237\u534f\u8bae\u300b</a>\u201c\u5faa\u73af\u4ed8\u6b3e\u201d\u90e8\u5206\u7684\u89c4\u5b9a\u3002</p><p>\u4e3a\u786e\u4fdd\u53ef\u901a\u8fc7\u60a8\u7684PayPal\u8d26\u6237\u4ed8\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u8d44\u91d1\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u6388\u6743</strong></h1><p>\u4e3a\u786e\u4fdd\u4ee5\u540e\u53ef\u4ece\u60a8\u7684PayPal\u8d26\u6237\u6536\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u6b3e\u9879\u3002</p><p>\u60a8\u7684\u9ed8\u8ba4\u4ed8\u6b3e\u65b9\u5f0f\u5c06\u7528\u4e8e\u652f\u4ed8PayPal\u8d2d\u7269\u6b3e\u9879\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u6388\u6743\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u6211\u7684\u8d26\u6237\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p><p>\u5982\u9700\u4e86\u89e3\u66f4\u591a\u4fe1\u606f\uff0c\u8bf7\u9605\u8bfb<a href=\'%s\'>PayPal\u300a\u7528\u6237\u534f\u8bae\u300b</a>\u7684\u201c\u9884\u6838\u51c6\u4ed8\u6b3e\u201d\u90e8\u5206\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u6388\u6743</strong></h1><p>\u4e3a\u786e\u4fdd\u4ee5\u540e\u53ef\u4ece\u60a8\u7684PayPal\u8d26\u6237\u6536\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u6b3e\u9879\u3002</p><p>\u60a8\u7684\u9ed8\u8ba4\u4ed8\u6b3e\u65b9\u5f0f\u5c06\u7528\u4e8e\u652f\u4ed8PayPal\u8d2d\u7269\u6b3e\u9879\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u6388\u6743\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u6211\u7684\u8d26\u6237\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p><p>\u5982\u9700\u4e86\u89e3\u66f4\u591a\u4fe1\u606f\uff0c\u8bf7\u9605\u8bfb<a href=\'%s\'>PayPal\u300a\u7528\u6237\u534f\u8bae\u300b</a>\u7684\u201c\u9884\u6838\u51c6\u4ed8\u6b3e\u201d\u90e8\u5206\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u534f\u8bae</strong></h1><p>\u4e3a\u786e\u4fdd\u4ee5\u540e\u53ef\u4ece\u60a8\u7684PayPal\u8d26\u6237\u6536\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u8d44\u91d1\u3002</p><p>\u60a8\u7684PayPal\u4f59\u989d\u6216\u9996\u9009\u4fe1\u7528\u5361\u6216\u501f\u8bb0\u5361\u5c06\u7528\u4e8e\u652f\u4ed8PayPal\u8d2d\u7269\u6b3e\u9879\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u534f\u8bae\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u6388\u6743</strong></h1><p>\u4e3a\u786e\u4fdd\u4ee5\u540e\u53ef\u4ece\u60a8\u7684PayPal\u8d26\u6237\u6536\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u6b3e\u9879\u3002</p><p>\u60a8\u7684\u9ed8\u8ba4\u4ed8\u6b3e\u65b9\u5f0f\u5c06\u7528\u4e8e\u652f\u4ed8PayPal\u8d2d\u7269\u6b3e\u9879\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u6388\u6743\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u6211\u7684\u8d26\u6237\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p><p>\u5982\u9700\u4e86\u89e3\u66f4\u591a\u4fe1\u606f\uff0c\u8bf7\u9605\u8bfb<a href=\'%s\'>PayPal\u300a\u7528\u6237\u534f\u8bae\u300b</a>\u7684\u201c\u9884\u6838\u51c6\u4ed8\u6b3e\u201d\u90e8\u5206\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u6388\u6743</strong></h1><p>\u4e3a\u786e\u4fdd\u4ee5\u540e\u53ef\u4ece\u60a8\u7684PayPal\u8d26\u6237\u6536\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u6b3e\u9879\u3002</p><p>\u60a8\u7684\u9ed8\u8ba4\u4ed8\u6b3e\u65b9\u5f0f\u5c06\u7528\u4e8e\u652f\u4ed8PayPal\u8d2d\u7269\u6b3e\u9879\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u6388\u6743\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u6211\u7684\u8d26\u6237\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p><p>\u5982\u9700\u4e86\u89e3\u66f4\u591a\u4fe1\u606f\uff0c\u8bf7\u9605\u8bfb<a href=\'%s\'>PayPal\u300a\u7528\u6237\u534f\u8bae\u300b</a>\u7684\u201c\u9884\u6838\u51c6\u4ed8\u6b3e\u201d\u90e8\u5206\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u6388\u6743</strong></h1><p>\u4e3a\u786e\u4fdd\u4ee5\u540e\u53ef\u4ece\u60a8\u7684PayPal\u8d26\u6237\u6536\u6b3e\uff0c\u6b64\u5e94\u7528\u7a0b\u5e8f\u5c06\u6a21\u62df\u4e00\u6b21\u5c0f\u578b\u7684\u6d4b\u8bd5\u4ea4\u6613\uff0c\u4f46\u662f\u4e0d\u4f1a\u8f6c\u79fb\u6b3e\u9879\u3002</p><p>\u60a8\u7684\u9ed8\u8ba4\u4ed8\u6b3e\u65b9\u5f0f\u5c06\u7528\u4e8e\u652f\u4ed8PayPal\u8d2d\u7269\u6b3e\u9879\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u6388\u6743\uff0c\u8bf7\u767b\u5f55\u5230\u60a8\u7684PayPal\u8d26\u6237\uff0c\u524d\u5f80<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u6211\u7684\u8d26\u6237\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p><p>\u5982\u9700\u4e86\u89e3\u66f4\u591a\u4fe1\u606f\uff0c\u8bf7\u9605\u8bfb<a href=\'%s\'>PayPal\u300a\u7528\u6237\u534f\u8bae\u300b</a>\u7684\u201c\u9884\u6838\u51c6\u4ed8\u6b3e\u201d\u90e8\u5206\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>\u65e5\u540e\u4ed8\u6b3e\u534f\u8bae</strong></h1><p>PayPal\u5c06\u9996\u5148\u4f7f\u7528\u60a8\u7684PayPal\u4f59\u989d\u4e3a\u8d2d\u7269\u4ed8\u6b3e\u3002\u5982\u679cPayPal\u4f59\u989d\u4e0d\u8db3\uff0c\u5219\u4f9d\u6b21\u4f7f\u7528\u60a8\u7684\u94f6\u884c\u8d26\u6237\u3001PayPal Credit\u3001\u501f\u8bb0\u5361\u3001\u4fe1\u7528\u5361\u4ee5\u53ca\u7535\u5b50\u652f\u7968\u3002</p><p>\u82e5\u8981\u53d6\u6d88\u6b64\u534f\u8bae\uff0c\u8bf7\u524d\u5f80www.paypal.com<strong>\u7528\u6237\u4fe1\u606f</strong> &gt; <strong>\u8bbe\u7f6e</strong> &gt; <strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u4ece\u5217\u8868\u4e2d\u5220\u9664\u6b64\u5546\u5bb6\u3002</p><p>\u4e3a\u786e\u4fdd\u4ee5\u540e\u53ef\u4ece\u60a8\u7684PayPal\u8d26\u6237\u6536\u6b3e\uff0c\u53ef\u80fd\u9700\u8981\u60a8\u63d0\u4f9b\u5c0f\u989d\u4ed8\u6b3e\u6388\u6743\u3002\u6388\u6743\u5c06\u88ab\u4f5c\u5e9f\uff0c\u5e76\u4e14\u4e0d\u4f1a\u5411\u60a8\u6536\u6b3e\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "\u4f7f\u7528PayPal\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "\u4f7f\u7528PayPal\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5408\u4f5c\u4f19\u4f34\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\u5e76\u70b9\u51fb\u9f7f\u8f6e\u56fe\u6807\u3002\u8f6c\u5230<strong>\u5b89\u5168</strong>\uff0c\u9009\u62e9<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5408\u4f5c\u4f19\u4f34\u3002</p><p>\u5bf9\u4e8e\u5408\u4f5c\u4f19\u4f34\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u8bbe\u7f6e\u4e0b\u7684<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5408\u4f5c\u4f19\u4f34\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\uff0c\u7136\u540e\u8f6c\u5230\u60a8\u7684<strong>\u7528\u6237\u4fe1\u606f</strong>\u8bbe\u7f6e\u4e0b\u7684<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5408\u4f5c\u4f19\u4f34\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\u5e76\u70b9\u51fb\u9f7f\u8f6e\u56fe\u6807\u3002\u8f6c\u5230<strong>\u5b89\u5168</strong>\uff0c\u9009\u62e9<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5408\u4f5c\u4f19\u4f34\u3002</p><p>\u5bf9\u4e8e\u5408\u4f5c\u4f19\u4f34\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5408\u4f5c\u4f19\u4f34\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\u5e76\u70b9\u51fb\u9f7f\u8f6e\u56fe\u6807\u3002\u8f6c\u5230<strong>\u5b89\u5168</strong>\uff0c\u9009\u62e9<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5408\u4f5c\u4f19\u4f34\u3002</p><p>\u5bf9\u4e8e\u5408\u4f5c\u4f19\u4f34\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u8bbe\u7f6e\u4e0b\u7684<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\uff0c\u70b9\u51fb\u53f3\u4e0a\u89d2\u7684\u9f7f\u8f6e\u56fe\u6807\uff0c\u9009\u62e9<strong>\u5b89\u5168\u4e2d\u5fc3</strong>\uff0c\u9009\u62e9<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u79fb\u9664\u8be5\u5546\u5bb6\u3002\u5982\u679c\u60a8\u4ecd\u5728\u4f7f\u7528\u7ecf\u5178\u7248\u7f51\u7ad9\uff0c\u8bf7\u8f6c\u5230<strong>\u6211\u7684\u7528\u6237\u4fe1\u606f</strong>\uff0c\u9009\u62e9<strong>\u6211\u7684\u8d26\u6237\u8bbe\u7f6e</strong>\uff0c\u9009\u62e9<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\uff0c\u7136\u540e\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5408\u4f5c\u4f19\u4f34\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u8bbe\u7f6e\u4e0b\u7684<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5408\u4f5c\u4f19\u4f34\u3002</p><p>\u5bf9\u4e8e\u5408\u4f5c\u4f19\u4f34\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.it\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\uff0c\u7136\u540e\u8f6c\u5230\u60a8\u7684<strong>\u7528\u6237\u4fe1\u606f</strong>\u8bbe\u7f6e\u4e0b\u7684<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u8bbe\u7f6e\u4e0b\u7684<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\uff0c\u7136\u540e\u8f6c\u5230\u60a8\u7684<strong>\u7528\u6237\u4fe1\u606f</strong>\u8bbe\u7f6e\u4e0b\u7684<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5408\u4f5c\u4f19\u4f34\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.ru\uff0c\u70b9\u51fb\u53f3\u4e0a\u89d2\u7684\u9f7f\u8f6e\u56fe\u6807\uff0c\u9009\u62e9<strong>\u5b89\u5168</strong>\u9009\u9879\u5361\u5e76\u5728<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u4e2d\u79fb\u9664\u8be5\u5408\u4f5c\u4f19\u4f34\u3002</p><p>\u5bf9\u4e8e\u5408\u4f5c\u4f19\u4f34\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55\u60a8\u7684PayPal\u8d26\u6237\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u8bbe\u7f6e\u4e0b\u7684<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com.tr\uff0c\u70b9\u51fb\u53f3\u4e0a\u89d2\u7684\u9f7f\u8f6e\u56fe\u6807\uff0c\u9009\u62e9<strong>\u5b89\u5168</strong>\u9009\u9879\u5361\u5e76\u5728<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u4e2d\u79fb\u9664\u8be5\u5408\u4f5c\u4f19\u4f34\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u8bbe\u7f6e\u4e0b\u7684<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u9009\u9879\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u5c06\u4e0e\u5546\u5bb6\u5171\u4eab\u4efb\u4f55\u76f8\u5173\u4ea4\u6613\u8be6\u60c5\u3002</p><p>\u8981\u64a4\u56de\u540c\u610f\uff0c\u8bf7\u767b\u5f55paypal.com\uff0c\u7136\u540e\u8f6c\u5230<strong>\u7528\u6237\u4fe1\u606f</strong>\u3001<strong>\u5b89\u5168</strong>\uff0c\u627e\u5230<strong>\u4f7f\u7528PayPal\u767b\u5f55</strong>\u5e76\u79fb\u9664\u8be5\u5546\u5bb6\u3002</p><p>\u5bf9\u4e8e\u5546\u5bb6\u6267\u884c\u7684\u4efb\u4f55\u64cd\u4f5c\u6216\u53d1\u751f\u7684\u4efb\u4f55\u9519\u8bef\uff0cPayPal\u6982\u4e0d\u8d1f\u8d23\u3002</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "\u8d2d\u7269\u8f66\u7269\u54c1\u603b\u91d1\u989d\u4e0e\u9500\u552e\u989d\u4e0d\u7b26\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "\u6b64\u6388\u6743\u5df2\u5b8c\u6210\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "\u6388\u6743\u5904\u4e8e\u65e0\u6cd5\u4f5c\u5e9f\u7684\u72b6\u6001\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "\u6388\u6743\u5df2\u7ecf\u5230\u671f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "\u8bf7\u6c42\u7684\u6388\u6743\u53f7\u4e0d\u5b58\u5728\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "\u6388\u6743\u5df2\u4f5c\u5e9f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "\u53ea\u80fd\u91cd\u65b0\u6279\u51c6\u539f\u59cb\u6388\u6743\uff0c\u800c\u4e0d\u80fd\u91cd\u65b0\u6388\u6743\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "\u5728\u652f\u4ed8\u671f\u5185\u4e0d\u5141\u8bb8\u91cd\u65b0\u6388\u6743\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "\u91d1\u989d\u8d85\u51fa\u4e86\u5141\u8bb8\u7684\u9650\u989d\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "\u65e0\u6cd5\u8bbf\u95ee\u4fdd\u5b58\u7684\u5361\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "\u5361\u4fe1\u606f\u65e0\u6548\u3002\u8bf7\u66f4\u6b63\u5e76\u91cd\u65b0\u63d0\u4ea4\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "\u5361\u88ab\u62d2\u7edd\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "\u83b7\u53d6\u7684\u5e01\u79cd\u5fc5\u987b\u4e0e\u6388\u6743\u7684\u5e01\u79cd\u4e00\u6837\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "PayPal\u76ee\u524d\u4e0d\u652f\u6301\u6b64\u5e01\u79cd\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "\u5361\u5df2\u8fc7\u671f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "\u5907\u6848\u4e2d\u5df2\u6ca1\u6709\u6b64\u5361\u7684\u4fe1\u606f\u3002\n\u8bf7\u91cd\u65b0\u63d0\u4ea4\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "\u6b64\u4f9b\u5e94\u5546\u4e0d\u652f\u6301\u8be5\u529f\u80fd\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "\u6b64\u4ea4\u6613\u7684\u90e8\u5206\u6b3e\u9879\u5df2\u9000\u8fd8\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "\u4f20\u9012\u7684\u610f\u56fe\u4e0d\u652f\u6301\u7acb\u5373\u4ed8\u6b3e\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "\u60a8\u9009\u62e9\u7684\u4ed8\u6b3e\u65b9\u5f0f\u4e0d\u88ab\u63a5\u53d7\u3002\u8bf7\u9009\u62e9\u53e6\u4e00\u79cd\u65b9\u5f0f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "\u4e70\u5bb6\u65e0\u6cd5\u4ed8\u6b3e\u2014\u2014\u8d44\u91d1\u4e0d\u8db3\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "\u8d26\u53f7\u4e0d\u5b58\u5728\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "\u53c2\u6570\u65e0\u6548\uff0c\u4ea4\u6613\u88ab\u62d2\u7edd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "\u5e02/\u5dde/\u90ae\u7f16\u7ec4\u5408\u65e0\u6548\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "\u7531\u4e8e\u4e00\u4e2a\u670d\u52a1\u5546\u914d\u7f6e\u65e0\u6548\uff0c\u6b64\u4ea4\u6613\u65e0\u6cd5\u5904\u7406\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\uff08\u4ed8\u6b3e\u4ebaID\u65e0\u6548\uff09\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "\u4f9b\u5e94\u5546\u8d26\u6237\u4e2d\u6ca1\u6709\u7ecf\u8fc7\u786e\u8ba4\u7684\u90ae\u7bb1\u5730\u5740\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "\u6b64\u4f9b\u5e94\u5546\u76ee\u524d\u65e0\u6cd5\u63a5\u6536\u4ed8\u6b3e\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "\u4f9b\u5e94\u5546\u8d26\u6237\u4e2d\u6ca1\u6709\u7ecf\u8fc7\u786e\u8ba4\u7684\u90ae\u7bb1\u5730\u5740\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "\u6b64\u4f9b\u5e94\u5546\u76ee\u524d\u65e0\u6cd5\u63a5\u6536\u4ed8\u6b3e\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "\u60a8\u7684\u8d26\u6237\u5df2\u88ab\u9501\u5b9a\u6216\u6ce8\u9500\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "\u60a8\u7684\u8d26\u6237\u5df2\u53d7\u5230\u9650\u5236\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "\u60a8\u4e0d\u80fd\u4f7f\u7528PayPal\u4e3a\u6b64\u4ea4\u6613\u4ed8\u6b3e\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "\u975ePayPal\u4fe1\u7528\u5361\u4ea4\u6613\u9700\u8981\u8d26\u5355\u5730\u5740\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "\u65e0\u6cd5\u8bbf\u95ee\u4fdd\u5b58\u7684\u5361\u4fe1\u606f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "\u4ed8\u6b3e\u6838\u51c6\u5df2\u8fc7\u671f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "\u4ed8\u6b3e\u5df2\u8fc7\u671f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "\u4ed8\u6b3e\u4eba\u672a\u6279\u51c6\u4ed8\u6b3e\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "PayPal\u8bf7\u6c42ID\u65e0\u6548\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "\u9274\u4e8e\u5f53\u524d\u7684\u4ed8\u6b3e\u72b6\u6001\uff0c\u6b64\u8bf7\u6c42\u65e0\u6548\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "\u6ca1\u6709\u6743\u9650\u6267\u884c\u8bf7\u6c42\u7684\u64cd\u4f5c\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "\u8bf7\u6c42\u7684\u9000\u6b3e\u91d1\u989d\u8d85\u51fa\u4e86\u539f\u59cb\u4ea4\u6613\u91d1\u989d\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "\u6b64\u4ea4\u6613\u65f6\u95f4\u592a\u4e45\uff0c\u65e0\u6cd5\u518d\u9000\u6b3e\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "\u4e0d\u5141\u8bb8\u518d\u91cd\u65b0\u6279\u51c6\u6b64\u6388\u6743\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "\u6b64\u4ea4\u6613\u5df2\u9000\u6b3e\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "\u91d1\u989d\u8d85\u51fa\u4e86\u5141\u8bb8\u7684\u9650\u989d\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "\u4ea4\u6613\u88ab\u62d2\u7edd\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "\u4ea4\u6613\u88ab\u62d2\u7edd\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "\u5546\u5bb6\u7528\u6237\u4fe1\u606f\u4e60\u60ef\u8bbe\u5b9a\u5df2\u8bbe\u7f6e\u4e3a\u81ea\u52a8\u62d2\u7edd\u67d0\u4e9b\u4ea4\u6613\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "\u60a8\u7684\u56fd\u5bb6\u6216\u5730\u533a\u4e0d\u53d7\u652f\u6301\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "\u4ed8\u6b3e\u4fe1\u606f\u65e0\u6548\u3002\u8bf7\u66f4\u6b63\u5e76\u91cd\u65b0\u63d0\u4ea4\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "\u8ba2\u5355\u5df2\u4f5c\u5e9f\u3001\u8fc7\u671f\u6216\u5b8c\u6210\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "\u8be5\u8ba2\u5355\u5df2\u8fbe\u5230\u5141\u8bb8\u6388\u6743\u7684\u6700\u5927\u503c\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "\u8ba2\u5355\u5df2\u4f5c\u5e9f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "\u8ba2\u5355\u5904\u4e8e\u65e0\u6cd5\u4f5c\u5e9f\u7684\u72b6\u6001\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "\u5546\u5bb6\u4e0d\u63a5\u53d7\u6b64\u7c7b\u578b\u7684\u4ed8\u6b3e\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "\u5361\u7c7b\u578b\u4e0d\u652f\u6301\u8be5\u5e01\u79cd\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "\u5361\u7c7b\u578b\u4e0d\u53d7\u652f\u6301\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "\u6dfb\u52a0\u9001\u8d27\u5730\u5740\u5230PayPal\u8d26\u6237\u65f6\u9047\u5230\u9519\u8bef\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "\u91cd\u590d\u4ea4\u6613\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "\u63d0\u4f9b\u7684\u9001\u8d27\u5730\u5740\u65e0\u6548\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "\u8bbe\u7f6e\u6b64\u4ed8\u6b3e\u65f6\u51fa\u73b0\u95ee\u9898\u3002\u8bf7\u8bbf\u95eePayPal\u7f51\u7ad9\u5e76\u68c0\u67e5\u60a8\u7684\u8d26\u6237\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "\u8bbe\u7f6e\u6b64\u4ed8\u6b3e\u65f6\u51fa\u73b0\u95ee\u9898\u2014\u2014\u60a8\u7684\u5361\u5df2\u8fc7\u671f\u3002\u8bf7\u8bbf\u95eePayPal\u7f51\u7ad9\u5e76\u68c0\u67e5\u60a8\u7684\u8d26\u6237\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "\u8bbe\u7f6e\u6b64\u4ed8\u6b3e\u65f6\u51fa\u73b0\u95ee\u9898\u2014\u2014\u9700\u8981\u8fdb\u884c\u5373\u65f6\u4ed8\u6b3e\uff0c\u4f8b\u5982\u4fe1\u7528\u5361\u4ed8\u6b3e\u3002\u8bf7\u8bbf\u95eePayPal\u7f51\u7ad9\u5e76\u68c0\u67e5\u60a8\u7684\u8d26\u6237\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "\u8bbe\u7f6e\u6b64\u4ed8\u6b3e\u65f6\u51fa\u73b0\u95ee\u9898\u2014\u2014\u5361\u5fc5\u987b\u7ecf\u8fc7\u786e\u8ba4\u3002\u8bf7\u8bbf\u95eePayPal\u7f51\u7ad9\u5e76\u68c0\u67e5\u60a8\u7684\u8d26\u6237\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "\u8bbe\u7f6e\u6b64\u4ed8\u6b3e\u65f6\u51fa\u73b0\u95ee\u9898\u2014\u2014\u6b64\u5e94\u7528\u7a0b\u5e8f\u8981\u6c42\u5728\u8d26\u6237\u4e2d\u767b\u8bb0\u7535\u8bdd\u53f7\u7801\u3002\u8bf7\u8bbf\u95eePayPal\u7f51\u7ad9\u5e76\u68c0\u67e5\u60a8\u7684\u8d26\u6237\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "\u8bbe\u7f6e\u6b64\u4ed8\u6b3e\u65f6\u51fa\u73b0\u95ee\u9898\u2014\u2014\u8d26\u6237\u9700\u8981\u6709\u6548\u7684\u8d44\u91d1\u6765\u6e90\uff0c\u4f8b\u5982\u94f6\u884c\u8d26\u6237\u6216\u652f\u4ed8\u5361\u3002\u8bf7\u8bbf\u95eePayPal\u7f51\u7ad9\u5e76\u68c0\u67e5\u60a8\u7684\u8d26\u6237\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "\u8bbe\u7f6e\u6b64\u4ed8\u6b3e\u65f6\u51fa\u73b0\u95ee\u9898\u2014\u2014\u60a8\u7684\u4f59\u989d\u4e3a\u8d1f\u6570\u3002\u8bf7\u8bbf\u95eePayPal\u7f51\u7ad9\u5e76\u68c0\u67e5\u60a8\u7684\u8d26\u6237\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "\u8bbe\u7f6e\u6b64\u4ed8\u6b3e\u65f6\u51fa\u73b0\u95ee\u9898\u2014\u2014\u60a8\u5df2\u8fbe\u5230\u652f\u4ed8\u9650\u989d\u3002\u8bf7\u8bbf\u95eePayPal\u7f51\u7ad9\u5e76\u68c0\u67e5\u60a8\u7684\u8d26\u6237\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "\u56e0\u98ce\u9669\u88ab\u62d2\u7edd\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "\u5ba2\u6237\u7aef\u672a\u83b7\u6388\u6743\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "\u5ba2\u6237\u7aef\u672a\u83b7\u6388\u6743\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "\u7528\u6237\u540d/\u5bc6\u7801\u4e0d\u6b63\u786e\u3002\u8bf7\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "\u60a8\u7684PayPal\u8d26\u6237\u6682\u65f6\u88ab\u9501\u5b9a\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff0c\u6216\u524d\u5f80www.paypal.com\u7acb\u5373\u89e3\u9501\u60a8\u7684PayPal\u8d26\u6237\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "\u767b\u5f55\u5931\u8d25\u6b21\u6570\u8fc7\u591a\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "\u53d1\u751f\u9519\u8bef\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "\u8bf7\u6c42\u672a\u7ecf\u6388\u6743\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "\u8bf7\u6c42\u672a\u7ecf\u6388\u6743\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "\u53d1\u751f\u9519\u8bef\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "\u8bf7\u6c42\u672a\u7ecf\u6388\u6743\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "\u6682\u65f6\u65e0\u6cd5\u5b8c\u6210\u60a8\u7684\u767b\u5f55\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff0c\u6216\u8f6c\u5230www.paypal.com\u89e3\u51b3\u4efb\u4f55\u4e0e\u60a8\u7684PayPal\u8d26\u6237\u76f8\u5173\u7684\u5b89\u5168\u95ee\u9898\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    const-string v1, "account_locked_generate_challenge_limit_exceeded"

    const-string v2, "\u767b\u5f55\u5c1d\u8bd5\u6b21\u6570\u8fc7\u591a\u3002\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff0c\u6216\u8054\u7cfbPayPal\u83b7\u53d6\u5e2e\u52a9\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "zh-Hans"

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    check-cast p1, Lcom/paypal/android/sdk/fb;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/paypal/android/sdk/h;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/h;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.class public final Lcom/paypal/android/sdk/gr;
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

    sput-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->a:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zgadzam si\u0119 i chc\u0119 zap\u0142aci\u0107"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->b:Lcom/paypal/android/sdk/fb;

    const-string v2, "i inne"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->c:Lcom/paypal/android/sdk/fb;

    const-string v2, "Uwierzytelnianie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->d:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wstecz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->e:Lcom/paypal/android/sdk/fb;

    const-string v2, "Rezerwowe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->f:Lcom/paypal/android/sdk/fb;

    const-string v2, "Anuluj"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->g:Lcom/paypal/android/sdk/fb;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->h:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carta Aura"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->i:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carte Aurore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->j:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carta Prepagata PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->k:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carte Bancaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->l:Lcom/paypal/android/sdk/fb;

    const-string v2, "Cofinoga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->m:Lcom/paypal/android/sdk/fb;

    const-string v2, "Delta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->n:Lcom/paypal/android/sdk/fb;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->o:Lcom/paypal/android/sdk/fb;

    const-string v2, "Electron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->p:Lcom/paypal/android/sdk/fb;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->q:Lcom/paypal/android/sdk/fb;

    const-string v2, "Maestro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->r:Lcom/paypal/android/sdk/fb;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->s:Lcom/paypal/android/sdk/fb;

    const-string v2, "Postepay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->t:Lcom/paypal/android/sdk/fb;

    const-string v2, "4 \u00e9toiles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->u:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tarjeta Aurora"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->v:Lcom/paypal/android/sdk/fb;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->w:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zmie\u0144 form\u0119 p\u0142atno\u015bci"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->x:Lcom/paypal/android/sdk/fb;

    const-string v2, "Rozliczeniowy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->y:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sprawdzanie urz\u0105dzenia\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->z:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wyczy\u015b\u0107 informacje o karcie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->A:Lcom/paypal/android/sdk/fb;

    const-string v2, "Potwierd\u017a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->B:Lcom/paypal/android/sdk/fb;

    const-string v2, "Na pewno chcesz wyczy\u015bci\u0107 informacje o karcie?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->C:Lcom/paypal/android/sdk/fb;

    const-string v2, "Obci\u0105\u017c kart\u0119"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->D:Lcom/paypal/android/sdk/fb;

    const-string v2, "Na pewno chcesz si\u0119 wylogowa\u0107 z serwisu PayPal?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->E:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zap\u0142a\u0107"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->F:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zgadzam si\u0119"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->G:Lcom/paypal/android/sdk/fb;

    const-string v2, "Data za\u0142o\u017cenia konta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->H:Lcom/paypal/android/sdk/fb;

    const-string v2, "Status konta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->I:Lcom/paypal/android/sdk/fb;

    const-string v2, "Typ rachunku"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->J:Lcom/paypal/android/sdk/fb;

    const-string v2, "Adres"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->K:Lcom/paypal/android/sdk/fb;

    const-string v2, "Grupa wiekowa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->L:Lcom/paypal/android/sdk/fb;

    const-string v2, "Data urodzenia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->M:Lcom/paypal/android/sdk/fb;

    const-string v2, "Adres e-mail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->N:Lcom/paypal/android/sdk/fb;

    const-string v2, "Pe\u0142ne imi\u0119 i nazwisko"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->O:Lcom/paypal/android/sdk/fb;

    const-string v2, "P\u0142e\u0107"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->P:Lcom/paypal/android/sdk/fb;

    const-string v2, "J\u0119zyk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->Q:Lcom/paypal/android/sdk/fb;

    const-string v2, "Lokalizacja"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->R:Lcom/paypal/android/sdk/fb;

    const-string v2, "Telefon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->S:Lcom/paypal/android/sdk/fb;

    const-string v2, "Strefa czasowa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->T:Lcom/paypal/android/sdk/fb;

    const-string v2, "Udost\u0119pnij nast\u0119puj\u0105ce informacje: %s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->U:Lcom/paypal/android/sdk/fb;

    const-string v2, "Korzystaj z ekspresowej realizacji transakcji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->V:Lcom/paypal/android/sdk/fb;

    const-string v2, "%s prosi o:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->W:Lcom/paypal/android/sdk/fb;

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>formy p\u0142atno\u015bci</a> powi\u0105zane z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->X:Lcom/paypal/android/sdk/fb;

    const-string v2, "W\u0142\u0105cz wy\u015bwietlanie opcji finansowania p\u0142atno\u015bci, aby m\u00f3c dokona\u0107 wyboru."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->Y:Lcom/paypal/android/sdk/fb;

    const-string v2, "<a href=\'%1$s\'>autoryzowanie op\u0142at</a> za przysz\u0142e zakupy u handlowca %2$s zap\u0142acone w systemie PayPal. Wszystkie kwoty, kt\u00f3rych za\u017c\u0105da handlowiec %3$s, b\u0119d\u0105 wyp\u0142acane przez serwis PayPal na Twoje zlecenie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->Z:Lcom/paypal/android/sdk/fb;

    const-string v2, "zgod\u0119 na dodawanie kart lojalno\u015bciowych i zarz\u0105dzanie nimi w Twoim portfelu PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aa:Lcom/paypal/android/sdk/fb;

    const-string v2, "akceptacj\u0119 warunk\u00f3w okre\u015blonych w dokumentach %1$s: <a href=\'%2$s\'>zasadach zachowania poufno\u015bci</a> i <a href=\'%3$s\'>umowie z u\u017cytkownikiem</a>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ab:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wyra\u017a zgod\u0119 na <a href=\'%1$s\'>\u017c\u0105danie zap\u0142aty</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ac:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wyra\u017a zgod\u0119 na <a href=\'%1$s\'>wys\u0142anie pieni\u0119dzy</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ad:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zgoda"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ae:Lcom/paypal/android/sdk/fb;

    const-string v2, "Adres e-mail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->af:Lcom/paypal/android/sdk/fb;

    const-string v2, "Dane pr\u00f3bne"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ag:Lcom/paypal/android/sdk/fb;

    const-string v2, "Centrum testowe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ah:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wygasa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ai:Lcom/paypal/android/sdk/fb;

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje formy p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aj:Lcom/paypal/android/sdk/fb;

    const-string v2, "Nie pami\u0119tasz has\u0142a?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ak:Lcom/paypal/android/sdk/fb;

    const-string v2, "Od"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->al:Lcom/paypal/android/sdk/fb;

    const-string v2, "Jak chcesz finansowa\u0107 przysz\u0142e p\u0142atno\u015bci na rzecz %1$s?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->am:Lcom/paypal/android/sdk/fb;

    const-string v2, "<h1><strong>Umowa dotycz\u0105ca p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Do zap\u0142aty za przysz\u0142e zakupy w systemie PayPal u tego handlowca u\u017cyte zostanie Twoje domy\u015blne \u017ar\u00f3d\u0142o finansowania p\u0142atno\u015bci.</p><p>Aby anulowa\u0107 t\u0119 umow\u0119, zaloguj si\u0119 do konta PayPal i\u00a0wybierz kolejno <strong>Profil</strong> &gt; <strong>Moje ustawienia</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p><p>Obowi\u0105zuj\u0105 warunki opisane w\u00a0rozdziale \u201eP\u0142atno\u015bci cykliczne\u201d <a href=\'%s\'>Umowy z\u00a0U\u017cytkownikiem us\u0142ugi PayPal</a>.</p><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce p\u0142atno\u015bci b\u0119d\u0105 pobierane z Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->an:Lcom/paypal/android/sdk/fb;

    const-string v2, "B\u0142\u0105d wewn\u0119trzny"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ao:Lcom/paypal/android/sdk/fb;

    const-string v2, "<p>Klikaj\u0105c przycisk poni\u017cej, akceptuj\u0119 postanowienia <a href=\'%1$s\'>Umowy z\u00a0U\u017cytkownikiem us\u0142ugi PayPal</a> i o\u015bwiadczam, \u017ce przestrzegam przepis\u00f3w prawa japo\u0144skiego, w\u00a0tym przepis\u00f3w dotycz\u0105cych zakazu dokonywania p\u0142atno\u015bci do Korei P\u00f3\u0142nocnej i\u00a0Iranu zgodnie z <a href=\'%2$s\'>ustaw\u0105 Foreign Exchange and Foreign Trade Act (Ustawa o\u00a0wymianie walut i\u00a0handlu zagranicznym)</a> na potrzeby realizacji tej transakcji.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ap:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zaloguj si\u0119"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aq:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zaloguj si\u0119 z PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ar:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wyloguj si\u0119"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->as:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wyloguj si\u0119"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->at:Lcom/paypal/android/sdk/fb;

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->au:Lcom/paypal/android/sdk/fb;

    const-string v2, "Has\u0142o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->av:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zap\u0142a\u0107 po dostawie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aw:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zap\u0142a\u0107 za pomoc\u0105"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ax:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zap\u0142a\u0107 kart\u0105"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ay:Lcom/paypal/android/sdk/fb;

    const-string v2, "Saldo PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->az:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kredyt PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aA:Lcom/paypal/android/sdk/fb;

    const-string v2, "Telefon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aB:Lcom/paypal/android/sdk/fb;

    const-string v2, "PIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aC:Lcom/paypal/android/sdk/fb;

    const-string v2, "Preferowana forma p\u0142atno\u015bci"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aD:Lcom/paypal/android/sdk/fb;

    const-string v2, "Serwis PayPal chroni Twoj\u0105 <a href=\'%s\'>prywatno\u015b\u0107</a> i informacje finansowe."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aE:Lcom/paypal/android/sdk/fb;

    const-string v2, "Przetwarzanie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aF:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zapami\u0119taj kart\u0119"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aG:Lcom/paypal/android/sdk/fb;

    const-string v2, "Za\u017c\u0105daj zap\u0142aty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aH:Lcom/paypal/android/sdk/fb;

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> w obszarze <strong>Profil</strong>, a nast\u0119pnie usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie partnera.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aI:Lcom/paypal/android/sdk/fb;

    const-string v2, "Oszcz\u0119dno\u015bciowy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aJ:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wy\u015blij pieni\u0105dze"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aK:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wyst\u0105pi\u0142 problem z nawi\u0105zaniem po\u0142\u0105czenia z serwerami PayPal. Spr\u00f3buj ponownie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aL:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zaloguj si\u0119 ponownie do systemu PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aM:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sesja wygas\u0142a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aN:Lcom/paypal/android/sdk/fb;

    const-string v2, "Adres wysy\u0142kowy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aO:Lcom/paypal/android/sdk/fb;

    const-string v2, "Nowy u\u017cytkownik? Za\u0142\u00f3\u017c konto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aP:Lcom/paypal/android/sdk/fb;

    const-string v2, "Nie wylogowuj si\u0119"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aQ:Lcom/paypal/android/sdk/fb;

    const-string v2, "B\u0142\u0105d systemu (%s). Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aR:Lcom/paypal/android/sdk/fb;

    const-string v2, "Spr\u00f3buj ponownie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aS:Lcom/paypal/android/sdk/fb;

    const-string v2, "Logowanie nie powiod\u0142o si\u0119, poniewa\u017c dla Twojego konta w\u0142\u0105czono uwierzytelnianie dwusk\u0142adnikowe."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aT:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kod bezpiecze\u0144stwa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aU:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wy\u015blij wiadomo\u015b\u0107 tekstow\u0105 na sw\u00f3j telefon. Otrzymany 6-cyfrowy kod b\u0119dzie wa\u017cny przez 5 minut."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aV:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wysy\u0142anie wiadomo\u015bci tekstowej"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aW:Lcom/paypal/android/sdk/fb;

    const-string v2, "Podaj 6-cyfrowy kod zabezpieczaj\u0105cy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aX:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tw\u00f3j numer telefonu kom\u00f3rkowego"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aY:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wy\u015blij wiadomo\u015b\u0107 tekstow\u0105"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aZ:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wy\u015blij wiadomo\u015b\u0107 tekstow\u0105 ponownie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ba:Lcom/paypal/android/sdk/fb;

    const-string v2, "Logowanie nie powiod\u0142o si\u0119, poniewa\u017c dla Twojego konta w\u0142\u0105czono uwierzytelnianie dwusk\u0142adnikowe. Przejd\u017a do witryny PayPal i uaktywnij klucz bezpiecze\u0144stwa."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bb:Lcom/paypal/android/sdk/fb;

    const-string v2, "Dokonywanie p\u0142atno\u015bci z tego urz\u0105dzenia jest niedozwolone."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bc:Lcom/paypal/android/sdk/fb;

    const-string v2, "Nieautoryzowane urz\u0105dzenie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bd:Lcom/paypal/android/sdk/fb;

    const-string v2, "P\u0142atno\u015bci na rzecz tego handlowca nie s\u0105 dozwolone (nieprawid\u0142owy identyfikator klienta)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->be:Lcom/paypal/android/sdk/fb;

    const-string v2, "Nieprawid\u0142owy handlowiec"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bf:Lcom/paypal/android/sdk/fb;

    const-string v2, "Wyst\u0105pi\u0142 problem z przetworzeniem p\u0142atno\u015bci. Spr\u00f3buj ponownie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bg:Lcom/paypal/android/sdk/fb;

    const-string v2, "Nierozpoznane \u017ar\u00f3d\u0142o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bh:Lcom/paypal/android/sdk/fb;

    const-string v2, "Przepraszamy."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bi:Lcom/paypal/android/sdk/fb;

    const-string v2, "Twoje zam\u00f3wienie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bj:Lcom/paypal/android/sdk/fb;

    const-string v2, "Urz\u0105dzenie nie mo\u017ce skomunikowa\u0107 si\u0119 z PayPal, poniewa\u017c ta wersja systemu Android jest zbyt stara. Zaktualizuj system Android lub skorzystaj z nowszego urz\u0105dzenia."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bk:Lcom/paypal/android/sdk/fb;

    const-string v2, "Usun\u0105\u0107 kart\u0119?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bl:Lcom/paypal/android/sdk/fb;

    const-string v2, "Udzielenie zgody nie powiod\u0142o si\u0119"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bm:Lcom/paypal/android/sdk/fb;

    const-string v2, "Pr\u00f3ba po\u0142\u0105czenia nieudana"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bn:Lcom/paypal/android/sdk/fb;

    const-string v2, "Logowanie nie powiod\u0142o si\u0119"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bo:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zaloguj si\u0119 za pomoc\u0105 has\u0142a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bp:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zaloguj si\u0119 przy u\u017cyciu kodu PIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bq:Lcom/paypal/android/sdk/fb;

    const-string v2, "Chwileczk\u0119\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->br:Lcom/paypal/android/sdk/fb;

    const-string v2, "P\u0142atno\u015b\u0107 nie powiod\u0142a si\u0119"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bs:Lcom/paypal/android/sdk/fb;

    const-string v2, "Skanuj"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bt:Lcom/paypal/android/sdk/fb;

    const-string v2, "Nieprawid\u0142owy kod bezpiecze\u0144stwa. Spr\u00f3buj ponownie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bu:Lcom/paypal/android/sdk/fb;

    const-string v2, "przez"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bv:Lcom/paypal/android/sdk/fb;

    const-string v2, "B\u0142\u0105d systemu. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "Udost\u0119pnij informacje o <a href=\'%1$s\'>\u017ar\u00f3d\u0142ach finansowania p\u0142atno\u015bci</a> powi\u0105zanych z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "Udost\u0119pnij informacje o <a href=\'%1$s\'>\u017ar\u00f3d\u0142ach finansowania p\u0142atno\u015bci</a> powi\u0105zanych z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "Udost\u0119pnij informacje o <a href=\'%1$s\'>\u017ar\u00f3d\u0142ach finansowania p\u0142atno\u015bci</a> powi\u0105zanych z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "Udost\u0119pnij informacje o <a href=\'%1$s\'>\u017ar\u00f3d\u0142ach finansowania p\u0142atno\u015bci</a> powi\u0105zanych z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "Udost\u0119pnij informacje o <a href=\'%1$s\'>formach p\u0142atno\u015bci</a> powi\u0105zanych z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "Udost\u0119pnij informacje o <a href=\'%1$s\'>\u017ar\u00f3d\u0142ach finansowania p\u0142atno\u015bci</a> powi\u0105zanych z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> powi\u0105zane z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> powi\u0105zane z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "Udost\u0119pnij informacje o <a href=\'%1$s\'>\u017ar\u00f3d\u0142ach finansowania p\u0142atno\u015bci</a> powi\u0105zanych z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "Udost\u0119pnij informacje o <a href=\'%1$s\'>formach p\u0142atno\u015bci</a> powi\u0105zanych z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "Udost\u0119pnij informacje o <a href=\'%1$s\'>\u017ar\u00f3d\u0142ach finansowania p\u0142atno\u015bci</a> powi\u0105zanych z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "Udost\u0119pnij informacje o <a href=\'%1$s\'>formach p\u0142atno\u015bci</a> powi\u0105zanych z Twoim kontem PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "Udost\u0119pnij <a href=\'%1$s\'>\u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci</a> w swoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p><a href=\'%1$s\'>autoryzowanie op\u0142at</a> za przysz\u0142e zakupy u handlowca %2$s zap\u0142acone w systemie PayPal. Wszystkie kwoty, kt\u00f3rych za\u017c\u0105da handlowiec %3$s, b\u0119d\u0105 wyp\u0142acane przez serwis PayPal na Twoje zlecenie.</p><p>Aby uzyska\u0107 wi\u0119cej informacji, zapoznaj si\u0119 z <a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>umow\u0105 o\u00a0p\u0142atno\u015bciach cyklicznych i\u00a0umow\u0105 rozliczeniow\u0105 PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p><a href=\'%1$s\'>autoryzowanie op\u0142at</a> za przysz\u0142e zakupy u handlowca %2$s zap\u0142acone w systemie PayPal. Wszystkie kwoty, kt\u00f3rych za\u017c\u0105da handlowiec %3$s, b\u0119d\u0105 wyp\u0142acane przez serwis PayPal na Twoje zlecenie.</p><p>Aby uzyska\u0107 wi\u0119cej informacji, zapoznaj si\u0119 z <a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>umow\u0105 o\u00a0p\u0142atno\u015bciach cyklicznych i\u00a0umow\u0105 rozliczeniow\u0105 PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "<a href=\'%1$s\'>autoryzowanie op\u0142at</a> za przysz\u0142e zakupy zap\u0142acone w systemie PayPal. Zlecasz firmie PayPal wyp\u0142acanie wszystkich kwot i udzielasz jej do tego stosownej autoryzacji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "<a href=\'%1$s\'>autoryzowanie op\u0142at</a> za przysz\u0142e zakupy zap\u0142acone w systemie PayPal. Zlecasz firmie PayPal wyp\u0142acanie wszystkich kwot i udzielasz jej do tego stosownej autoryzacji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "<a href=\'%1$s\'>autoryzowanie op\u0142at</a> za przysz\u0142e zakupy zap\u0142acone w systemie PayPal. Zlecasz firmie PayPal wyp\u0142acanie wszystkich kwot i udzielasz jej do tego stosownej autoryzacji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "Wst\u0119pnie zatwierdzaj dokonywane z Twojego konta PayPal p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105 bez konieczno\u015bci ka\u017cdorazowego logowania si\u0119 w systemie PayPal. <a href=\'%1$s\'>Zobacz dodatkowe warunki</a> dotycz\u0105ce m.in. form p\u0142atno\u015bci i sposobu anulowania p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>\u017c\u0105danie zap\u0142aty</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>\u017c\u0105danie zap\u0142aty</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>\u017c\u0105danie zap\u0142aty</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>\u017c\u0105danie zap\u0142aty</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>\u017c\u0105danie zap\u0142aty</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>\u017c\u0105danie zap\u0142aty</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>\u017c\u0105danie zap\u0142aty</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>wysy\u0142anie pieni\u0119dzy</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>wysy\u0142anie pieni\u0119dzy</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>wysy\u0142anie pieni\u0119dzy</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>wysy\u0142anie pieni\u0119dzy</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>wysy\u0142anie pieni\u0119dzy</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>wysy\u0142anie pieni\u0119dzy</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "Zezw\u00f3l %2$s na <a href=\'%1$s\'>wysy\u0142anie pieni\u0119dzy</a> w Twoim imieniu. Zgoda ta b\u0119dzie wa\u017cna do czasu jej wycofania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>Formy p\u0142atno\u015bci</strong></h1><p>Firma PayPal udost\u0119pnia informacje wy\u0142\u0105cznie na temat tego, kt\u00f3re Twoje \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci s\u0105 dost\u0119pne do u\u017cytku.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>Umowa dotycz\u0105ca p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce nie wyst\u0105pi\u0105 problemy z\u00a0obci\u0105\u017ceniem Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p><p>Do zap\u0142aty za zakupy w systemie PayPal u\u017cyta zostanie Twoja domy\u015blna forma p\u0142atno\u015bci (w kolejno\u015bci: konto PayPal, powi\u0105zany rachunek bankowy, karta debetowa lub kredytowa). Pami\u0119taj, \u017ce je\u015bli w\u00a0ramach swojej domy\u015blnej formy p\u0142atno\u015bci nie masz wystarczaj\u0105cych \u015brodk\u00f3w do dokonania p\u0142atno\u015bci za zakupy, Tw\u00f3j bank lub wystawca karty mo\u017ce obci\u0105\u017cy\u0107 Ci\u0119 op\u0142at\u0105.</p><p>Aby anulowa\u0107 t\u0119 umow\u0119, zaloguj si\u0119 do konta PayPal i wybierz kolejno <strong>Profil</strong>, <strong>Moje ustawienia</strong> i opcj\u0119 <strong>Zmie\u0144</strong> dost\u0119pn\u0105 obok pozycji Zaloguj si\u0119 z PayPal.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>Umowa dotycz\u0105ca p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce nie wyst\u0105pi\u0105 problemy z\u00a0obci\u0105\u017ceniem Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p><p>P\u0142atno\u015bci za zakupy w\u00a0systemie PayPal zostan\u0105 pobrane z\u00a0salda Twojego konta PayPal lub podstawowej karty kredytowej albo debetowej.</p><p>Aby anulowa\u0107 t\u0119 umow\u0119, zaloguj si\u0119 do konta PayPal i\u00a0wybierz kolejno <strong>Profil</strong> &gt; <strong>Moje ustawienia</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>Umowa dotycz\u0105ca p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce nie wyst\u0105pi\u0105 problemy z\u00a0obci\u0105\u017ceniem Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p><p>Do zap\u0142aty za zakupy w systemie PayPal u\u017cyta zostanie Twoja domy\u015blna forma p\u0142atno\u015bci.</p><p>Aby anulowa\u0107 t\u0119 umow\u0119, zaloguj si\u0119 do konta PayPal i\u00a0wybierz kolejno <strong>Profil</strong> &gt; <strong>Ustawienia</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>Umowa dotycz\u0105ca p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Do zap\u0142aty za przysz\u0142e zakupy w systemie PayPal u tego handlowca u\u017cyte zostanie Twoje domy\u015blne \u017ar\u00f3d\u0142o finansowania p\u0142atno\u015bci.</p><p>Aby anulowa\u0107 t\u0119 umow\u0119, zaloguj si\u0119 do konta PayPal i\u00a0wybierz kolejno <strong>Profil</strong> &gt; <strong>Moje ustawienia</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p><p>Obowi\u0105zuj\u0105 warunki opisane w\u00a0rozdziale \u201eP\u0142atno\u015bci cykliczne\u201d <a href=\'%s\'>Umowy z\u00a0U\u017cytkownikiem us\u0142ugi PayPal</a>.</p><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce p\u0142atno\u015bci b\u0119d\u0105 pobierane z Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>Autoryzacja p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce nie wyst\u0105pi\u0105 problemy z\u00a0obci\u0105\u017ceniem Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p><p>Do zap\u0142aty za zakupy w systemie PayPal u\u017cyta zostanie Twoja domy\u015blna forma p\u0142atno\u015bci.</p><p>Aby anulowa\u0107 t\u0119 autoryzacj\u0119, zaloguj si\u0119 do konta PayPal i\u00a0wybierz kolejno <strong>Profil</strong> &gt; <strong>Ustawienia mojego konta</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p><p>Wi\u0119cej informacji znajdziesz w rozdziale \u201eWst\u0119pnie zatwierdzone p\u0142atno\u015bci\u201d <a href=\'%s\'>Umowy z U\u017cytkownikiem us\u0142ugi PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>Autoryzacja p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce nie wyst\u0105pi\u0105 problemy z\u00a0obci\u0105\u017ceniem Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p><p>Do zap\u0142aty za zakupy w systemie PayPal u\u017cyta zostanie Twoja domy\u015blna forma p\u0142atno\u015bci.</p><p>Aby anulowa\u0107 t\u0119 autoryzacj\u0119, zaloguj si\u0119 do konta PayPal i\u00a0wybierz kolejno <strong>Profil</strong> &gt; <strong>Ustawienia mojego konta</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p><p>Wi\u0119cej informacji znajdziesz w rozdziale \u201eWst\u0119pnie zatwierdzone p\u0142atno\u015bci\u201d <a href=\'%s\'>Umowy z U\u017cytkownikiem us\u0142ugi PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>Umowa dotycz\u0105ca p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce nie wyst\u0105pi\u0105 problemy z\u00a0obci\u0105\u017ceniem Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p><p>P\u0142atno\u015bci za zakupy w\u00a0systemie PayPal zostan\u0105 pobrane z\u00a0salda Twojego konta PayPal lub podstawowej karty kredytowej albo debetowej.</p><p>Aby anulowa\u0107 t\u0119 umow\u0119, zaloguj si\u0119 do konta PayPal i\u00a0wybierz kolejno <strong>Profil</strong> &gt; <strong>Moje ustawienia</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>Autoryzacja p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce nie wyst\u0105pi\u0105 problemy z\u00a0obci\u0105\u017ceniem Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p><p>Do zap\u0142aty za zakupy w systemie PayPal u\u017cyta zostanie Twoja domy\u015blna forma p\u0142atno\u015bci.</p><p>Aby anulowa\u0107 t\u0119 autoryzacj\u0119, zaloguj si\u0119 do konta PayPal i\u00a0wybierz kolejno <strong>Profil</strong> &gt; <strong>Ustawienia mojego konta</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p><p>Wi\u0119cej informacji znajdziesz w rozdziale \u201eWst\u0119pnie zatwierdzone p\u0142atno\u015bci\u201d <a href=\'%s\'>Umowy z U\u017cytkownikiem us\u0142ugi PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>Autoryzacja p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce nie wyst\u0105pi\u0105 problemy z\u00a0obci\u0105\u017ceniem Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p><p>Do zap\u0142aty za zakupy w systemie PayPal u\u017cyta zostanie Twoja domy\u015blna forma p\u0142atno\u015bci.</p><p>Aby anulowa\u0107 t\u0119 autoryzacj\u0119, zaloguj si\u0119 do konta PayPal i\u00a0wybierz kolejno <strong>Profil</strong> &gt; <strong>Ustawienia mojego konta</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p><p>Wi\u0119cej informacji znajdziesz w rozdziale \u201eWst\u0119pnie zatwierdzone p\u0142atno\u015bci\u201d <a href=\'%s\'>Umowy z U\u017cytkownikiem us\u0142ugi PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>Autoryzacja p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>Aby mie\u0107 pewno\u015b\u0107, \u017ce nie wyst\u0105pi\u0105 problemy z\u00a0obci\u0105\u017ceniem Twojego konta PayPal, aplikacja mo\u017ce przeprowadzi\u0107 transakcj\u0119 testow\u0105 o\u00a0niewielkiej warto\u015bci, w\u00a0wyniku kt\u00f3rej nie zostan\u0105 jednak przelane \u017cadne \u015brodki.</p><p>Do zap\u0142aty za zakupy w systemie PayPal u\u017cyta zostanie Twoja domy\u015blna forma p\u0142atno\u015bci.</p><p>Aby anulowa\u0107 t\u0119 autoryzacj\u0119, zaloguj si\u0119 do konta PayPal i\u00a0wybierz kolejno <strong>Profil</strong> &gt; <strong>Ustawienia mojego konta</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p><p>Wi\u0119cej informacji znajdziesz w rozdziale \u201eWst\u0119pnie zatwierdzone p\u0142atno\u015bci\u201d <a href=\'%s\'>Umowy z U\u017cytkownikiem us\u0142ugi PayPal</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>Umowa dotycz\u0105ca p\u0142atno\u015bci z dat\u0105 przysz\u0142\u0105</strong></h1><p>W celu realizacji zakupu system PayPal w pierwszej kolejno\u015bci korzysta ze \u015brodk\u00f3w na Twoim koncie PayPal. Je\u015bli \u015brodki te s\u0105 niewystarczaj\u0105ce, wykorzystane zostan\u0105 kolejno: rachunek bankowy, PayPal Credit, karta debetowa, karta kredytowa lub czek elektroniczny.</p><p>Aby anulowa\u0107 t\u0119 umow\u0119, na stronie www.paypal.pl wybierz kolejno <strong>Profil</strong> &gt; <strong>Moje ustawienia</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 handlowca z listy.</p><p>Autoryzacja p\u0142atno\u015bci o\u00a0mniejszej warto\u015bci mo\u017ce by\u0107 wymagana w celu sprawdzenia, czy konto PayPal mo\u017ce by\u0107 obci\u0105\u017cane. Taka autoryzacja zostanie jednak uniewa\u017cniona, a\u00a0pobranie op\u0142aty anulowane.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "Zaloguj si\u0119 z PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "Zaloguj si\u0119 z PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione partnerowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal i kliknij ikon\u0119 ustawie\u0144. Na karcie <strong>Bezpiecze\u0144stwo</strong> wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> i usu\u0144 tego partnera.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie partnera.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> w obszarze <strong>Profil</strong>, a nast\u0119pnie usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie partnera.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal, wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> w obszarze <strong>Profil</strong>, a nast\u0119pnie usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione partnerowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal i kliknij ikon\u0119 ustawie\u0144. Na karcie <strong>Bezpiecze\u0144stwo</strong> wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> i usu\u0144 tego partnera.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie partnera.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione partnerowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal i kliknij ikon\u0119 ustawie\u0144. Na karcie <strong>Bezpiecze\u0144stwo</strong> wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> i usu\u0144 tego partnera.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie partnera.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal, wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> w obszarze <strong>Profil</strong>, a nast\u0119pnie usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal, kliknij ikon\u0119 ustawie\u0144 w prawym g\u00f3rnym rogu, wybierz kart\u0119 <strong>Centrum bezpiecze\u0144stwa</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca. Je\u015bli korzystasz z klasycznej strony internetowej, wybierz kolejno <strong>M\u00f3j profil</strong> &gt; <strong>Ustawienia mojego konta</strong> &gt; <strong>Zaloguj si\u0119 z PayPal</strong>, a nast\u0119pnie usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione partnerowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal, wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> w obszarze <strong>Profil</strong>, a nast\u0119pnie usu\u0144 tego partnera.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie partnera.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.it, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal, wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> w obszarze <strong>Profil</strong>, a nast\u0119pnie usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal, wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> w obszarze <strong>Profil</strong>, a nast\u0119pnie usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal, wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> w obszarze <strong>Profil</strong>, a nast\u0119pnie usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione partnerowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.ru, kliknij ikon\u0119 ustawie\u0144 w prawym g\u00f3rnym rogu, wybierz kart\u0119 <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego partnera.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie partnera.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 do swojego konta PayPal, wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> w obszarze <strong>Profil</strong>, a nast\u0119pnie usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.com.tr, kliknij ikon\u0119 ustawie\u0144 w prawym g\u00f3rnym rogu, wybierz kart\u0119 <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego partnera.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz opcj\u0119 <strong>Zaloguj si\u0119 z PayPal</strong> w obszarze <strong>Profil</strong>, a nast\u0119pnie usu\u0144 tego handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Wszelkie stosowne szczeg\u00f3\u0142y transakcji zostan\u0105 udost\u0119pnione handlowcowi.</p><p>Aby wycofa\u0107 zgod\u0119, zaloguj si\u0119 na stronie paypal.pl, wybierz kart\u0119 <strong>Profil</strong> &gt; <strong>Bezpiecze\u0144stwo</strong> i, korzystaj\u0105c z opcji <strong>Zaloguj si\u0119 z PayPal</strong>, usu\u0144 tego handlowca.</p><p>Firma PayPal nie odpowiada za dzia\u0142ania i b\u0142\u0119dy po stronie handlowca.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "Suma wszystkich pozycji w koszyku jest niezgodna z kwot\u0105 sprzeda\u017cy."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "Ta autoryzacja zosta\u0142a ju\u017c zako\u0144czona."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "Autoryzacji w aktualnym stanie nie mo\u017cna uniewa\u017cni\u0107."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "Autoryzacja straci\u0142a wa\u017cno\u015b\u0107."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "Numer identyfikacyjny \u017c\u0105danej autoryzacji nie istnieje."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "Autoryzacja zosta\u0142a anulowana."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "Ponownej autoryzacji mo\u017cna dokona\u0107 tylko w ramach pierwotnej autoryzacji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "Ponowna autoryzacja nie jest dozwolona w okresie honorowania."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "Kwota przekracza dopuszczalny limit."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "Brak dost\u0119pu do zapisanych informacji o karcie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "Dane karty s\u0105 nieprawid\u0142owe. Popraw je i prze\u015blij ponownie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "Karta zosta\u0142a odrzucona."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "Waluta pobranych \u015brodk\u00f3w musi by\u0107 jednakowa z walut\u0105 autoryzacji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "Twoja waluta nie jest aktualnie obs\u0142ugiwana przez system PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "B\u0142\u0105d systemu. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "B\u0142\u0105d systemu. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "Karta wygas\u0142a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "W systemie nie ma ju\u017c zapisanych informacji o\u00a0tej karcie.\nPrze\u015blij je ponownie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "Funkcja nie jest obs\u0142ugiwana u tego handlowca."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "Ta transakcja zosta\u0142a ju\u017c cz\u0119\u015bciowo zwr\u00f3cona."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "P\u0142atno\u015b\u0107 natychmiastowa nie jest obs\u0142ugiwana w wybranej opcji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "Wybrana przez Ciebie forma p\u0142atno\u015bci nie zosta\u0142a zaakceptowana. Wybierz inn\u0105 form\u0119 p\u0142atno\u015bci."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "Kupuj\u0105cy nie mo\u017ce zap\u0142aci\u0107 \u2013 niewystarczaj\u0105ce \u015brodki."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "B\u0142\u0105d systemu. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "Ten numer rachunku nie istnieje."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "Transakcja odrzucona z powodu nieprawid\u0142owego parametru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "Nieprawid\u0142owa kombinacja miasta/wojew\u00f3dztwa/kodu pocztowego."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "Nie mo\u017cna przetworzy\u0107 transakcji. Podana konfiguracja facylitatora jest nieprawid\u0142owa."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "B\u0142\u0105d systemu (nieprawid\u0142owy identyfikator p\u0142atnika). Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "B\u0142\u0105d systemu. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "Handlowiec nie posiada potwierdzonego adresu e-mail."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Ten dostawca nie mo\u017ce obecnie odbiera\u0107 p\u0142atno\u015bci."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "Handlowiec nie posiada potwierdzonego adresu e-mail."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "Ten dostawca nie mo\u017ce obecnie odbiera\u0107 p\u0142atno\u015bci."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Twoje konto zosta\u0142o zablokowane lub zamkni\u0119te."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "Dost\u0119p do Twojego konta zosta\u0142 ograniczony."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "Nie mo\u017cesz zap\u0142aci\u0107 za t\u0119 transakcj\u0119 z PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "W przypadku transakcji kart\u0105 kredytow\u0105 poza systemem PayPal wymagany jest adres rozliczeniowy."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "Brak dost\u0119pu do zapisanych informacji o karcie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "Zatwierdzenie p\u0142atno\u015bci straci\u0142o wa\u017cno\u015b\u0107."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "P\u0142atno\u015b\u0107 straci\u0142a wa\u017cno\u015b\u0107."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "P\u0142atnik nie zatwierdzi\u0142 p\u0142atno\u015bci."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "Identyfikator \u017c\u0105dania PayPal jest nieprawid\u0142owy. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "\u017b\u0105danie jest nieprawid\u0142owe z uwagi na aktualny status p\u0142atno\u015bci."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "Brak uprawnie\u0144 do wykonania \u017c\u0105danej operacji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "\u017b\u0105dana kwota zwrotu pieni\u0119dzy przekracza kwot\u0119 pierwotnej transakcji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "Transakcja zosta\u0142a dokonana zbyt dawno, aby dokona\u0107 zwrotu pieni\u0119dzy."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "B\u0142\u0105d systemu. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "Nie mo\u017cna dokona\u0107 wi\u0119cej ponownych autoryzacji w ramach tej autoryzacji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "Ta transakcja zosta\u0142a ju\u017c zwr\u00f3cona."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "Kwota przekracza dopuszczalny limit."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "Transakcja zosta\u0142a odrzucona."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "Transakcja zosta\u0142a odrzucona."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "Preferencje w profilu handlowca ustawione s\u0105 na automatyczne odrzucanie pewnych transakcji."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "B\u0142\u0105d systemu. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "Tw\u00f3j kraj nie jest obs\u0142ugiwany."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "Informacje o p\u0142atno\u015bci s\u0105 nieprawid\u0142owe. Popraw je i prze\u015blij ponownie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "Zam\u00f3wienie zosta\u0142o ju\u017c uniewa\u017cnione, straci\u0142o wa\u017cno\u015b\u0107 lub zosta\u0142o zrealizowane."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "Osi\u0105gni\u0119to limit dozwolonych autoryzacji w ramach tego zam\u00f3wienia."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "Zam\u00f3wienie zosta\u0142o uniewa\u017cnione."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "Obecny status zam\u00f3wienia uniemo\u017cliwia jego uniewa\u017cnienie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "B\u0142\u0105d systemu. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "Handlowiec nie akceptuje p\u0142atno\u015bci tego typu."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "Waluta nie jest obs\u0142ugiwana przez ten typ karty."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "Ten typ karty nie jest obs\u0142ugiwany."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "Podczas dodawania adresu wysy\u0142kowego do konta PayPal wyst\u0105pi\u0142 b\u0142\u0105d."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "Transakcja powielona."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "Podany adres wysy\u0142kowy jest nieprawid\u0142owy."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "Wyst\u0105pi\u0142 problem z utworzeniem tej p\u0142atno\u015bci. Sprawd\u017a swoje konto w witrynie PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "Wyst\u0105pi\u0142 problem z utworzeniem tej p\u0142atno\u015bci \u2013 Twoja karta wygas\u0142a. Sprawd\u017a swoje konto w witrynie PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "Wyst\u0105pi\u0142 problem z utworzeniem tej p\u0142atno\u015bci \u2013 wymagana jest p\u0142atno\u015b\u0107 b\u0142yskawiczna (na przyk\u0142ad kart\u0105 kredytow\u0105). Sprawd\u017a swoje konto w witrynie PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "Wyst\u0105pi\u0142 problem z utworzeniem tej p\u0142atno\u015bci \u2013 karta musi zosta\u0107 potwierdzona. Sprawd\u017a swoje konto w witrynie PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "Wyst\u0105pi\u0142 problem z utworzeniem tej p\u0142atno\u015bci \u2013 ta aplikacja wymaga, aby na Twoim koncie podany zosta\u0142 numer telefonu. Sprawd\u017a swoje konto w witrynie PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "Wyst\u0105pi\u0142 problem z utworzeniem tej p\u0142atno\u015bci \u2013 konto wymaga podania wa\u017cnego \u017ar\u00f3d\u0142a finansowania p\u0142atno\u015bci, np. rachunku bankowego lub karty p\u0142atniczej. Sprawd\u017a swoje konto w witrynie PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "Wyst\u0105pi\u0142 problem z utworzeniem tej p\u0142atno\u015bci \u2013 saldo konta jest ujemne. Sprawd\u017a swoje konto w witrynie PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "Wyst\u0105pi\u0142 problem z utworzeniem tej p\u0142atno\u015bci \u2013 osi\u0105gni\u0119to limit wysy\u0142ania. Sprawd\u017a swoje konto w witrynie PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "Odrzucono z uwagi na ryzyko."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "Klient nieautoryzowany."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "Klient nieautoryzowany."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "Nieprawid\u0142owa nazwa u\u017cytkownika / has\u0142o. Spr\u00f3buj ponownie."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "Twoje konto PayPal zosta\u0142o tymczasowo zablokowane. Spr\u00f3buj ponownie p\u00f3\u017aniej lub przejd\u017a do witryny www.paypal.pl i odblokuj swoje konto PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "Zbyt wiele pr\u00f3b logowania zako\u0144czy\u0142o si\u0119 niepowodzeniem. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "Wyst\u0105pi\u0142 b\u0142\u0105d."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "\u017b\u0105danie nieautoryzowane."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "\u017b\u0105danie nieautoryzowane."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "Wyst\u0105pi\u0142 b\u0142\u0105d."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "\u017b\u0105danie nieautoryzowane."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "B\u0142\u0105d systemu. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "B\u0142\u0105d systemu. Spr\u00f3buj ponownie p\u00f3\u017aniej."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "W tej chwili nie mo\u017cesz si\u0119 zalogowa\u0107. Spr\u00f3buj ponownie p\u00f3\u017aniej lub przejd\u017a do witryny www.paypal.pl i odpowiedz na w\u0105tpliwo\u015bci dotycz\u0105ce bezpiecze\u0144stwa Twojego konta PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    const-string v1, "account_locked_generate_challenge_limit_exceeded"

    const-string v2, "Zbyt wiele pr\u00f3b logowania. Spr\u00f3buj ponownie p\u00f3\u017aniej lub skontaktuj si\u0119 z PayPal, aby uzyska\u0107 pomoc."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "pl"

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

    sget-object v1, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/paypal/android/sdk/gr;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/gr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/gr;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

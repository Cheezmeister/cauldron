const after = (ms, fn) => window.setTimeout(fn, ms);
const each = (ms, fn) => after(ms, () => { fn(); each(ms, fn); });

// Color-code devices by interface
each(500, () => {
	if (location.pathname.match('status-devices')) {
		[ ...document.querySelectorAll(
				'.tomato-grid tbody tr .co1'
		)].forEach(el => {
			if (el.innerHTML == 'br0') el.style = 'background: aliceblue';
			if (el.innerHTML == 'eth1') el.style = 'background: periwinkle';
			if (el.innerHTML == 'eth2') el.style = 'background: salmon';
		});

	}
})
